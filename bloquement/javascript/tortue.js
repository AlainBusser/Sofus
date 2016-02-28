var Tortue;
var SVG, dessineSegment, dessineTexte, effaceDessin;

SVG = function(tag) {
  return document.createElementNS('http://www.w3.org/2000/svg', tag);
};

effaceDessin = function() {
  var dessin;
  dessin = $("#leSVG");
  return dessin.empty();
};

dessineSegment = function(x1, y1, x2, y2, couleur) {
  var dessin;
  if (x1 == null) {
    x1 = 0;
  }
  if (y1 == null) {
    y1 = 0;
  }
  if (x2 == null) {
    x2 = 1;
  }
  if (y2 == null) {
    y2 = 1;
  }
  if (couleur == null) {
    couleur = 'black';
  }
  dessin = $("#leSVG");
  return $(SVG('line')).attr('x1', x1).attr('y1', y1).attr('x2', x2).attr('y2', y2).attr('stroke', couleur).attr('stroke-width', 1).appendTo(dessin);
};
dessineTexte = function(texte, x, y, couleur) {
  var dessin;
  if (x == null) {
    x = 20;
  }
  if (y == null) {
    y = 20;
  }
  if (couleur == null) {
    couleur = 'black';
  }
  dessin = $("#leSVG");
  return $(SVG('text')).attr('x', x).attr('y', y).attr('fill', couleur).text(texte).appendTo(dessin);
};

dessineCercle = function(cx, cy, r, couleur) {
  var dessin;
  if (cx == null) {
    cx = 0;
  }
  if (cy == null) {
    cy = 0;
  }
  if (r == null) {
    r = 5;
  }
  if (couleur == null) {
    couleur = 'red';
  }
  dessin = $("#leSVG");
  return $(SVG('circle')).attr('cx', cx).attr('cy', cy).attr('r', r).attr('fill', couleur).attr('fill-opacity', 0.4).attr('stroke', couleur).attr('stroke-width', 1).appendTo(dessin);
};



Tortue = (function() {
  function Tortue() {
    this.x = 320;
    this.y = 240;
    this.t = 0;
    this.c = "#000066";
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
    oldx = this.x;
    oldy = this.y;
    this.x -= d * Math.cos(this.t);
    this.y -= d * Math.sin(this.t);
    if (this.stylo) {
      return dessineSegment(oldx, oldy, this.x, this.y, this.c);
    }
  };

  Tortue.prototype.teleport = function(x, y) {
    this.x = x;
    return this.y = y;
  };

  return Tortue;

})();

toto1 = new Tortue;
