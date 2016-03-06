// Generated by CoffeeScript 1.9.3
var SVG, Tortue, axeX, axeY, axes, dessineCercle, dessineSegment, dessineTexte, effaceDessin, grille, toto, totos;

totos = {};

toto = 1;

SVG = function(tag) {
  return document.createElementNS('http://www.w3.org/2000/svg', tag);
};

effaceDessin = function() {
  var dessin, k, results, v;
  dessin = $('#leSVG');
  dessin.empty();
  results = [];
  for (k in totos) {
    v = totos[k];
    results.push(dessin.append($($.parseXML(v.svg)).find("#" + v.id)));
  }
  return results;
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
  var results, x;
  dessineSegment(20, 240, 620, 240, 'black');
  dessineSegment(620, 240, 600, 234, 'black');
  dessineSegment(620, 240, 600, 246, 'black');
  x = -300;
  results = [];
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
    results.push(x += 10);
  }
  return results;
};

axeY = function() {
  var results, y;
  dessineSegment(320, 440, 320, 40, 'black');
  dessineSegment(320, 40, 314, 60, 'black');
  dessineSegment(320, 40, 326, 60, 'black');
  y = -200;
  results = [];
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
    results.push(y += 10);
  }
  return results;
};

grille = function() {
  var results, x, y;
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
  results = [];
  while (y <= 200) {
    if (Math.abs(y) % 50 > 0) {
      dessineSegment(20, 240 - y, 620, 240 - y, 'yellow');
    } else {
      dessineSegment(20, 240 - y, 620, 240 - y, 'orange');
    }
    results.push(y += 10);
  }
  return results;
};

axes = function() {
  axeX();
  return axeY();
};

Tortue = (function() {
  function Tortue(id) {
    var $dessin;
    this.id = id;
    this.x = 320;
    this.y = 240;
    this.t = 0;
    this.c = '#000066';
    this.stylo = true;
    this.svg = "<svg xmlns='http://www.w3.org/2000/svg' version='1.1'>\n  <g id='" + this.id + "' transform='translate(320 240) rotate(0 20 20)' width='40' height='40' >\n      <line x1='4' y1='12' x2='28' y2='32' stroke-linecap='round' style='stroke: green; stroke-width: 4'/>\n      <line x1='4' y1='28' x2='28' y2='8' stroke-linecap='round' style='stroke: green; stroke-width: 4'/>\n      <line x1='20' y1='20' x2='36' y2='20' stroke-linecap='round' style='stroke: green; stroke-width: 8'/>\n      <ellipse cx='16' cy='20' rx='14' ry='10' style='fill: orange; stroke: brown; stroke-width: 2'/>\n      <circle cx='34' cy='16' r='2' style='fill: black; '/>\n      <circle cx='34' cy='24' r='2' style='fill: black; '/>\n  </g>\n</svg>";
    $dessin = $('#leSVG');
    $dessin.append($($.parseXML(this.svg)).find("#" + this.id));
    console.log($("#" + this.id).attr("transform"));
  }

  Tortue.prototype.toto_update = function() {
    return $("#" + this.id).attr("transform", "translate(" + (this.x - 20) + " " + (this.y - 20) + ") rotate(" + this.t + " 20 20)");
  };

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
    this.t -= a / 180 * Math.PI;
    return this.toto_update();
  };

  Tortue.prototype.td = function(a) {
    this.t += a / 180 * Math.PI;
    return this.toto_update();
  };

  Tortue.prototype.orient = function(a) {
    this.t = a / 180 * Math.PI;
    return this.toto_update();
  };

  Tortue.prototype.write = function(texte) {
    return dessineTexte(texte, this.x, this.y, this.c);
  };

  Tortue.prototype.cercle = function() {
    return dessineCercle(this.x, this.y, 4, this.c);
  };

  Tortue.prototype.teleport = function(x, y) {
    var ref;
    ref = [x, y], this.x = ref[0], this.y = ref[1];
    return this.toto_update();
  };

  Tortue.prototype.av = function(d) {
    var oldx, oldy;
    oldx = this.x;
    oldy = this.y;
    this.x += d * Math.cos(this.t);
    this.y += d * Math.sin(this.t);
    if (this.stylo) {
      dessineSegment(oldx, oldy, this.x, this.y, this.c);
    }
    return this.toto_update();
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
      dessineSegment(oldx, oldy, this.x, this.y, this.c);
    }
    return this.toto_update();
  };

  Tortue.prototype.distance = function(autre) {
    var d;
    d = Math.sqrt(Math.pow(autre.x - this.x, 2) + Math.pow(autre.y - this.y, 2));
    console.log("distance: " + d);
    return d;
  };

  return Tortue;

})();

$(function() {
  return totos[toto] = new Tortue(toto);
});
