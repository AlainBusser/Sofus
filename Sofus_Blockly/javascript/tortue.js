// Generated by CoffeeScript 1.4.0
var SVG, Tortue, axeX, axeY, axes, dessineCercle, dessineSegment, dessineTexte, effaceDessin, grille, newTurtle, toto, totos;

newTurtle = function() {
  var createButton, element;
  element = document.getElementById('turtles');
  createButton = function(context, func) {
    var button;
    button = document.createElement('input');
    button.type = 'button';
    button.value = 'toto2';
    button.onclick = func;
    return context.appendChild(button);
  };
  return createButton(element, function() {
    var toto;
    toto = 'toto2';
    return console.log('toto2');
  });
};

SVG = function(tag) {
  return document.createElementNS('http://www.w3.org/2000/svg', tag);
};

effaceDessin = function() {
  var dessin;
  dessin = $('#leSVG');
  return dessin.empty();
};

dessineSegment = function(x1, y1, x2, y2, couleur) {
  var dessin;
  if (x1 === null) {
    x1 = 0;
  }
  if (y1 === null) {
    y1 = 0;
  }
  if (x2 === null) {
    x2 = 1;
  }
  if (y2 === null) {
    y2 = 1;
  }
  if (couleur === null) {
    couleur = 'black';
  }
  dessin = $('#leSVG');
  return $(SVG('line')).attr('x1', x1).attr('y1', y1).attr('x2', x2).attr('y2', y2).attr('stroke', couleur).attr('stroke-width', 1).appendTo(dessin);
};

dessineTexte = function(texte, x, y, couleur) {
  var dessin;
  dessin = void 0;
  if (x === null) {
    x = 20;
  }
  if (y === null) {
    y = 20;
  }
  if (couleur === null) {
    couleur = 'black';
  }
  dessin = $('#leSVG');
  return $(SVG('text')).attr('x', x).attr('y', y).attr('fill', couleur).text(texte).appendTo(dessin);
};

dessineCercle = function(cx, cy, r, couleur) {
  var dessin;
  dessin = void 0;
  if (cx === null) {
    cx = 0;
  }
  if (cy === null) {
    cy = 0;
  }
  if (r === null) {
    r = 5;
  }
  if (couleur === null) {
    couleur = 'red';
  }
  dessin = $('#leSVG');
  return $(SVG('circle')).attr('cx', cx).attr('cy', cy).attr('r', r).attr('fill', couleur).attr('fill-opacity', 0.4).attr('stroke', couleur).attr('stroke-width', 1).appendTo(dessin);
};

axeX = function() {
  var x, _results;
  dessineSegment(20, 240, 620, 240, 'black');
  dessineSegment(620, 240, 600, 234, 'black');
  dessineSegment(620, 240, 600, 246, 'black');
  x = -300;
  _results = [];
  while (x < 300) {
    if (Math.abs(x) % 50 > 0) {
      dessineSegment(320 + x, 242, 320 + x, 238, 'black');
    } else {
      if (Math.abs(x) % 100 > 0) {
        dessineSegment(320 + x, 244, 320 + x, 236, 'black');
      } else {
        dessineSegment(320 + x, 245, 320 + x, 235, 'black');
        dessineTexte(x, 320 + x, 260);
      }
    }
    _results.push(x += 10);
  }
  return _results;
};

axeY = function() {
  var y, _results;
  dessineSegment(320, 440, 320, 40, 'black');
  dessineSegment(320, 40, 314, 60, 'black');
  dessineSegment(320, 40, 326, 60, 'black');
  y = -200;
  _results = [];
  while (y < 200) {
    if (Math.abs(y) % 50 > 0) {
      dessineSegment(318, 240 - y, 322, 240 - y, 'black');
    } else {
      if (Math.abs(y) % 100 > 0) {
        dessineSegment(316, 240 - y, 324, 240 - y, 'black');
      } else {
        dessineSegment(315, 240 - y, 325, 240 - y, 'black');
        dessineTexte(y, 322, 240 - y);
      }
    }
    _results.push(y += 10);
  }
  return _results;
};

grille = function() {
  var x, y, _results;
  x = -300;
  while (x <= 300) {
    if (Math.abs(x) % 50 > 0) {
      dessineSegment(320 + x, 40, 320 + x, 440, 'yellow');
    } else {
      dessineSegment(320 + x, 40, 320 + x, 440, 'orange');
    }
    x += 10;
  }
  y = -200;
  _results = [];
  while (y <= 200) {
    if (Math.abs(y) % 50 > 0) {
      dessineSegment(20, 240 - y, 620, 240 - y, 'yellow');
    } else {
      dessineSegment(20, 240 - y, 620, 240 - y, 'orange');
    }
    _results.push(y += 10);
  }
  return _results;
};

axes = function() {
  axeX();
  return axeY();
};

Tortue = (function() {

  function Tortue() {
    this.x = 320;
    this.y = 240;
    this.t = 0;
    this.c = '#000066';
    this.stylo = true;
  }

  Tortue.prototype.penup = function() {
    return this.stylo = false;
  };

  Tortue.prototype.pendown = function() {
    return this.stylo = true;
  };

  Tortue.prototype.couleur = function(coul) {
    return this.c = coul;
  };

  Tortue.prototype.tg = function(a) {
    return this.t -= a / 180 * Math.PI;
  };

  Tortue.prototype.td = function(a) {
    return this.t += a / 180 * Math.PI;
  };

  Tortue.prototype.orient = function(a) {
    return this.t = a / 180 * Math.PI;
  };

  Tortue.prototype.write = function(texte) {
    return dessineTexte(texte, this.x, this.y, this.c);
  };

  Tortue.prototype.cercle = function() {
    return dessineCercle(this.x, this.y, 4, this.c);
  };

  Tortue.prototype.teleport = function(x, y) {
    var _ref;
    return _ref = [x, y], this.x = _ref[0], this.y = _ref[1], _ref;
  };

  Tortue.prototype.av = function(d) {
    var oldx, oldy;
    oldx = this.x;
    oldy = this.y;
    this.x += d * Math.cos(this.t);
    this.y += d * Math.sin(this.t);
    if (this.stylo) {
      return dessineSegment(oldx, oldy, this.x, this.y, this.c);
    }
  };

  Tortue.prototype.re = function(d) {
    var oldx, oldy;
    oldx = void 0;
    oldy = void 0;
    oldx = this.x;
    oldy = this.y;
    this.x -= d * Math.cos(this.t);
    this.y -= d * Math.sin(this.t);
    if (this.stylo) {
      return dessineSegment(oldx, oldy, this.x, this.y, this.c);
    }
  };

  return Tortue;

})();

totos = {};

totos['1'] = new Tortue();

toto = '1';
