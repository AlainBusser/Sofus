totos = {}
toto = 1
SVG = (tag) -> document.createElementNS 'http://www.w3.org/2000/svg', tag

garderobe = [
      """
            <line x1='4' y1='12' x2='28' y2='32' stroke-linecap='round' style='stroke: green; stroke-width: 4'/>
            <line x1='4' y1='28' x2='28' y2='8' stroke-linecap='round' style='stroke: green; stroke-width: 4'/>
            <line x1='20' y1='20' x2='36' y2='20' stroke-linecap='round' style='stroke: green; stroke-width: 8'/>
            <ellipse cx='16' cy='20' rx='14' ry='10' style='fill: orange; stroke: brown; stroke-width: 2'/>
            <circle cx='34' cy='16' r='2' style='fill: black; '/>
            <circle cx='34' cy='24' r='2' style='fill: black; '/>
      """,
      """
	<line x1="6" y1="12" x2="24" y2="32" stroke-linecap="round" style="stroke: green; stroke-width: 4"/>
	<line x1="2" y1="28" x2="32" y2="8" stroke-linecap="round" style="stroke: green; stroke-width: 4"/>
	<line x1="20" y1="20" x2="36" y2="20" stroke-linecap="round" style="stroke: green; stroke-width: 8"/>
	<ellipse cx="16" cy="20" rx="14" ry="10" style="fill: orange; stroke: brown; stroke-width: 2"/>
	<circle cx="34" cy="16" r="2" style="fill: black; "/>
	<circle cx="34" cy="24" r="2" style="fill: black; "/>
      """,
      """
	<line x1="2" y1="12" x2="32" y2="32" stroke-linecap="round" style="stroke: green; stroke-width: 4"/>
	<line x1="6" y1="28" x2="24" y2="8" stroke-linecap="round" style="stroke: green; stroke-width: 4"/>
	<line x1="20" y1="20" x2="36" y2="20" stroke-linecap="round" style="stroke: green; stroke-width: 8"/>
	<ellipse cx="16" cy="20" rx="14" ry="10" style="fill: orange; stroke: brown; stroke-width: 2"/>
	<circle cx="34" cy="16" r="2" style="fill: black; "/>
	<circle cx="34" cy="24" r="2" style="fill: black; "/>
      """,
      """
	<line x1="12" y1="20" x2="30" y2="20" style="stroke: blue; stroke-width: 1"/>
	<line x1="20" y1="25" x2="20" y2="10" style="stroke: red; stroke-width: 1"/>
	<text x="0" y="24" style="fill: blue;">x</text>
	<text x="16" y="34" style="fill: red;">y</text>
	<polygon style="fill: blue" points="30,18 36,20 30,22"></polygon>
	<polygon style="fill: red" points="18,10 20,4 22,10"></polygon>
      """,      
      """
	<line x1="4" y1="8" x2="4" y2="32" style="stroke: darkGray; stroke-width: 4"/>
	<line x1="3" y1="8" x2="3" y2="32" style="stroke: lightGray; stroke-width: 2"/>
	<line x1="4" y1="6" x2="4" y2="10" style="stroke: brown; stroke-width: 8"/>
	<line x1="34" y1="14" x2="34" y2="26" style="stroke: darkBlue; stroke-width: 4"/>
	<line x1="4" y1="30" x2="4" y2="34" style="stroke: brown; stroke-width: 8"/>
	<line x1="20" y1="20" x2="36" y2="20" stroke-linecap="round" style="stroke: darkGray; stroke-width: 8"/>
	<line x1="20" y1="19" x2="36" y2="19" stroke-linecap="round" style="stroke: gray; stroke-width: 6"/>
	<line x1="20" y1="18" x2="36" y2="18" stroke-linecap="round" style="stroke: lightGray; stroke-width: 4"/>
	<ellipse cx="16" cy="20" rx="14" ry="10" style="fill: gray; "/>
	<ellipse cx="15" cy="19" rx="12" ry="8" style="fill: darkGray; "/>
	<ellipse cx="14" cy="18" rx="10" ry="6" style="fill: lightGray; "/>
	<ellipse cx="13" cy="17" rx="8" ry="4" style="fill: white; "/>
      """,
      """
	<line x1="8" y1="20" x2="20" y2="20" style="stroke: brown; stroke-width: 1"/>
	<polygon style="fill: brown" points="20,12 40,20 20,28"></polygon>
      """
      ]


effaceDessin = () ->
  dessin = $('#leSVG')
  dessin.empty().append $($.parseXML(totos[1].svg)).find("#1")
#  dessin.append $( $.parseXML(v.svg) ).find("##{v.id}") for k,v of totos

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
    @costumeId = 0

    @svg = """
      <svg xmlns='http://www.w3.org/2000/svg' version='1.1'>
        <g id='#{@id}' transform='translate(300 220) rotate(0 20 20)' width='40' height='40' >
          #{garderobe[@costumeId]}
        </g>
      </svg>
    """
    $dessin = $('#leSVG')
    $dessin.append $( $.parseXML(@svg) ).find("##{@id}") if ( $dessin.find("##{@id}").length is 0 )
    console.log $("##{@id}").attr("transform")
   
  toto_update : -> 
    $("##{@id}").attr("transform", "translate(#{@x-20} #{@y-20}) rotate(#{@t*180/Math.PI} 20 20)")


  svg_update : ->
    @svg = garderobe[@costumeId]
    $svg = """
    <svg xmlns='http://www.w3.org/2000/svg' version='1.1'>
        <g id='toto' transform='translate(300 220) rotate(0 20 20)' width='40' height='40' >
        #{@svg}
        </g>
    </svg>
    """
    $("##{@id}").empty().append  $( $.parseXML($svg) ).find( "#toto" ).contents()

  penup   : -> @stylo = false

  pendown : -> @stylo = true

  show : ->  $('#' + @id).show()

  hide : ->  $('#' + @id).hide()
  
  couleur : (coul) -> @c = coul

  tg1      : (a) ->
    if step<niveau or turbo
        @t -= a / 180 * Math.PI
        @toto_update()
        step++

  tg      : (a) ->
    if turbo
        @tg1 a
    else
        for x in [0...a]
            @tg1 1

  td1      : (a) ->
    if step<niveau or turbo
        @t += a / 180 * Math.PI
        @toto_update()
        step++

  td      : (a) ->
    if turbo
        @td1 a
    else
        for x in [0...a]
            @td1 1

  orient  : (a) ->
    @t = a / 180 * Math.PI
    @toto_update()

  write   : (texte) -> dessineTexte texte, @x, @y, @c

  cercle  : -> dessineCercle @x, @y, 4, @c
  
  teleport : (x, y) ->
    [@x, @y] = [x, y]
    @toto_update()

  av1 : (d) ->
    if step<niveau or turbo
      oldx = undefined
      oldy = undefined
      oldx = @x
      oldy = @y
      @x += d * Math.cos(@t)
      @y += d * Math.sin(@t)
      dessineSegment(oldx, oldy, @x, @y, @c) if @stylo
      @toto_update()
      step++
  
  av : (d) ->
    if turbo
	    @av1 d
    else
	    for x in [0...d]
	        @av1 1
  

  re1 : (d) ->
    if step<niveau or turbo
      oldx = undefined
      oldy = undefined
      oldx = @x
      oldy = @y
      @x -= d * Math.cos(@t)
      @y -= d * Math.sin(@t)
      dessineSegment(oldx, oldy, @x, @y, @c) if @stylo
      @toto_update()
      step++
  
  re : (d) ->
    if turbo
	    @re1 d
    else
	    for x in [0...d]
	        @re1 1
  
  distance : (autre) ->
    d = Math.sqrt(Math.pow(autre.x-@x,2)+Math.pow(autre.y-@y,2))
    return d

  azimuth : (autre) ->
    a = Math.atan2(autre.y-@y,autre.x-@x)
    @t = a
    @toto_update()

  avatar : (nb) -> 
    @costumeId = nb
    @svg_update()

  costume_suivant : ->
    @costumeId = (@costumeId + 1) % garderobe.length
    @svg_update()

  costume_pred : ->
    @costumeId = (@costumeId + garderobe.length - 1) % garderobe.length
    @svg_update()

$ ->
  totos[toto] = new Tortue(toto)
  

nunit = ["zéro","et-un","deux","trois","quatre","cinq","six","sept","huit","neuf","dix","onze","douze","treize","quatorze","quinze","seize","dix-sept","dix-huit","dix-neuf"]
ndiz = ["zéro","dix","vingt","trente","quarante","cinquante","soixante","soixante","quatre-vingt","quatre-vingt"]
nmillesingulier = ["zéro","mille","million","milliard","billion","billiard","trillion","trillard","quadrillion","quadrillard","quintillion","quintilliard","sextillion","sextilliard"]
nmille = ["zéro","mille","millions","milliards","billions","billiards","trillions","trillards","quadrillions","quadrillards","quintillions","quintilliards","sextillions","sextilliards"]

quotronc = (n,d) -> Math.floor n/d

deux_chiffres = (n) ->
    if n==0
        ""
    else
      if n==71
          "soixante-et-onze"
      else
        if n==1
            "un"
        else
            if n<20
                nunit[n]
            else
                if n<60
                    if n%10==0
                        ndiz[quotronc(n,10)]
                    else
                        ndiz[quotronc(n,10)]+"-"+nunit[n%10]
                else
                    if n%20==0
                        ndiz[quotronc(n,10)]
                    else
                        if n%20==1
                            ndiz[quotronc(n,10)]+"-"+nunit[n%20]
                        else
                            ndiz[quotronc(n,10)]+"-"+nunit[n%20]
		
trois_chiffres = (n) ->
    if n<100
        deux_chiffres(n)
    else
        if n<200
            "cent "+deux_chiffres(n%100)
        else
            nunit[quotronc(n,100)]+" cents "+deux_chiffres(n%100)

entexte = (n) ->
    N = n.toString().length
    N = quotronc(N-1,3)
    if N==0
        trois_chiffres(n)
    else
        if N==1
            if n<2000
                nmille[N]+" "+trois_chiffres(n%1000)
            else
                trois_chiffres(quotronc(n,1000))+" "+nmille[N]+" "+trois_chiffres(n%1000)
        else
            texte = trois_chiffres(n%1000)
            n = quotronc(n,1000)
            indice = 1
            while indice<=N
              if n%1000>0
                if n%1000==1
                    texte = " un "+nmillesingulier[indice]+" "+texte
                else
                    texte = trois_chiffres(n%1000)+" "+nmille[indice]+" "+texte
              n = quotronc(n,1000)
              indice += 1
            texte

