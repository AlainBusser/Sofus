
newTurtle = ->
  element = document.getElementById('turtles')

  createButton = (context, func) ->
    button = document.createElement('input')
    button.type = 'button'
    button.value = 'toto2'
    button.onclick = func
    context.appendChild button

  createButton element, ->
    toto = 'toto2'
    console.log 'toto2'


SVG = (tag) ->
  document.createElementNS 'http://www.w3.org/2000/svg', tag

effaceDessin = () ->
  dessin = $('#leSVG')
  dessin.empty()

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
  constructor : ->
    @x = 320
    @y = 240
    @t = 0
    @c = '#000066'
    @stylo = true

  penup   : -> @stylo = false

  pendown : -> @stylo = true

  couleur : (coul) -> @c = coul

  tg      : (a) -> @t -= a / 180 * Math.PI

  td      : (a) -> @t += a / 180 * Math.PI

  orient  : (a) -> @t = a / 180 * Math.PI

  write   : (texte) -> dessineTexte texte, @x, @y, @c

  cercle  : -> dessineCercle @x, @y, 4, @c
  
  teleport : (x, y) -> [@x, @y] = [x, y]

  av : (d) ->
    oldx = @x
    oldy = @y
    @x += d * Math.cos(@t)
    @y += d * Math.sin(@t)
    dessineSegment(oldx, oldy, @x, @y, @c) if @stylo
    

  re : (d) ->
    oldx = undefined
    oldy = undefined
    oldx = @x
    oldy = @y
    @x -= d * Math.cos(@t)
    @y -= d * Math.sin(@t)
    dessineSegment(oldx, oldy, @x, @y, @c) if @stylo

totos = {}
totos['1'] = new Tortue()
toto = '1'

