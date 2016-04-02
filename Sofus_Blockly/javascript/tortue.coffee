totos = {}
toto = 1
SVG = (tag) -> document.createElementNS 'http://www.w3.org/2000/svg', tag

effaceDessin = () ->
  dessin = $('#leSVG')
  dessin.empty()
  dessin.append $( $.parseXML(v.svg) ).find("##{v.id}") for k,v of totos

dessineSegment = (x1, y1, x2, y2, couleur) ->
  if x1 == null
    x1 = 0
  if y1 == null
    y1 = 0
  if x2 == null
    x2 = 1
  if y2 == null
    y2 = 1
  if couleur == null
    couleur = 'black'
  dessin = $('#leSVG')
  $(SVG('line')).attr('x1', x1).attr('y1', y1).attr('x2', x2).attr('y2', y2).attr('stroke', couleur).attr('stroke-width', 1).appendTo dessin

dessineTexte = (texte, x, y, couleur) ->
  dessin = undefined
  if x == null
    x = 20
  if y == null
    y = 20
  if couleur == null
    couleur = 'black'
  dessin = $('#leSVG')
  $(SVG('text')).attr('x', x).attr('y', y).attr('fill', couleur).text(texte).appendTo dessin

dessineCercle = (cx, cy, r, couleur) ->
  dessin = undefined
  if cx == null
    cx = 0
  if cy == null
    cy = 0
  if r == null
    r = 5
  if couleur == null
    couleur = 'red'
  dessin = $('#leSVG')
  $(SVG('circle')).attr('cx', cx).attr('cy', cy).attr('r', r).attr('fill', couleur).attr('fill-opacity', 0.4).attr('stroke', couleur).attr('stroke-width', 1).appendTo dessin

axeX = ->
  dessineSegment 20, 240, 620, 240, 'black'
  dessineSegment 620, 240, 600, 234, 'black'
  dessineSegment 620, 240, 600, 246, 'black'
  x = -300
  while x < 300
    if Math.abs(x) % 50 > 0
      dessineSegment 320 + x, 242, 320 + x, 238, 'black'
    else
      if Math.abs(x) % 100 > 0
        dessineSegment 320 + x, 244, 320 + x, 236, 'black'
      else
        dessineSegment 320 + x, 245, 320 + x, 235, 'black'
        dessineTexte x, 320 + x, 260
    x += 10

axeY = ->
  dessineSegment 320, 440, 320, 40, 'black'
  dessineSegment 320, 40, 314, 60, 'black'
  dessineSegment 320, 40, 326, 60, 'black'
  y = -200
  while y < 200
    if Math.abs(y) % 50 > 0
      dessineSegment 318, 240 - y, 322, 240 - y, 'black'
    else
      if Math.abs(y) % 100 > 0
        dessineSegment 316, 240 - y, 324, 240 - y, 'black'
      else
        dessineSegment 315, 240 - y, 325, 240 - y, 'black'
        dessineTexte y, 322, 240 - y
    y += 10

grille = ->
  x = -300
  while x <= 300
    if Math.abs(x) % 50 > 0
      dessineSegment 320 + x, 40, 320 + x, 440, 'yellow'
    else
      dessineSegment 320 + x, 40, 320 + x, 440, 'orange'
    x += 10
  y = -200
  while y <= 200
    if Math.abs(y) % 50 > 0
      dessineSegment 20, 240 - y, 620, 240 - y, 'yellow'
    else
      dessineSegment 20, 240 - y, 620, 240 - y, 'orange'
    y += 10

axes = ->
  axeX()
  axeY()

class Tortue
  constructor : (@id) ->
    @x = 320
    @y = 240
    @t = 0
    @c = '#000066'
    @stylo = true
    @svg =
      """
      <svg xmlns='http://www.w3.org/2000/svg' version='1.1'>
        <g id='#{@id}' transform='translate(300 220) rotate(0 20 20)' width='40' height='40' >
            <line x1='4' y1='12' x2='28' y2='32' stroke-linecap='round' style='stroke: green; stroke-width: 4'/>
            <line x1='4' y1='28' x2='28' y2='8' stroke-linecap='round' style='stroke: green; stroke-width: 4'/>
            <line x1='20' y1='20' x2='36' y2='20' stroke-linecap='round' style='stroke: green; stroke-width: 8'/>
            <ellipse cx='16' cy='20' rx='14' ry='10' style='fill: orange; stroke: brown; stroke-width: 2'/>
            <circle cx='34' cy='16' r='2' style='fill: black; '/>
            <circle cx='34' cy='24' r='2' style='fill: black; '/>
        </g>
      </svg>
      """
    $dessin = $('#leSVG')
    $dessin.append $( $.parseXML(@svg) ).find("##{@id}") if ( $dessin.find("##{@id}").length is 0 )
    console.log $("##{@id}").attr("transform")
   
  toto_update : -> $("##{@id}").attr("transform", "translate(#{@x-20} #{@y-20}) rotate(#{@t*180/Math.PI} 20 20)")

  penup   : -> @stylo = false

  pendown : -> @stylo = true

  show : ->  $('#' + @id).show()

  hide : ->  $('#' + @id).hide()
  
  couleur : (coul) -> @c = coul

  tg      : (a) ->
    @t -= a / 180 * Math.PI
    @toto_update()

  td      : (a) ->
    @t += a / 180 * Math.PI
    @toto_update()

  orient  : (a) ->
    @t = a / 180 * Math.PI
    @toto_update()

  write   : (texte) -> dessineTexte texte, @x, @y, @c

  cercle  : -> dessineCercle @x, @y, 4, @c
  
  teleport : (x, y) ->
    [@x, @y] = [x, y]
    @toto_update()

  av : (d) ->
    oldx = @x
    oldy = @y
    @x += d * Math.cos(@t)
    @y += d * Math.sin(@t)
    dessineSegment(oldx, oldy, @x, @y, @c) if @stylo
    @toto_update()
    

  re : (d) ->
    oldx = undefined
    oldy = undefined
    oldx = @x
    oldy = @y
    @x -= d * Math.cos(@t)
    @y -= d * Math.sin(@t)
    dessineSegment(oldx, oldy, @x, @y, @c) if @stylo
    @toto_update()
  
  distance : (autre) ->
    d = Math.sqrt(Math.pow(autre.x-@x,2)+Math.pow(autre.y-@y,2))
    console.log "distance: #{d}"
    return d

  azimuth : (autre) ->
    a = Math.atan2(autre.y-@y,autre.x-@x)
    @t = a
    @toto_update()

$ ->
  totos[toto] = new Tortue(toto)
  

