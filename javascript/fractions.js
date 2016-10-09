var Fraction, differenceFractions, egypt, pgcd, produitFractions, quotientFractions, sommeFractions;


pgcd = function(x, y) {
  var _ref;
  while (y !== 0) {
    _ref = [y, x % y], x = _ref[0], y = _ref[1];
  }
  return x;
};

Fraction = (function() {
  function Fraction(n, d) {
    var facteur, _ref;
    this.n = n != null ? n : 1;
    this.d = d != null ? d : 1;
    facteur = pgcd(this.n, this.d);
    this.n /= facteur;
    this.d /= facteur;
    if (this.d < 0) {
      _ref = [-this.n, -this.d], this.n = _ref[0], this.d = _ref[1];
    }
  }

  return Fraction;

})();

Fraction.prototype.toString = function() {
  if (this.d === 1) {
    return "" + this.n;
  } else {
    if (this.n / this.d < 0) {
      return "(-" + (-this.n) + "/" + this.d + ")";
    } else {
      return "" + this.n + "/" + this.d;
    }
  }
};

Fraction.prototype.eq = function(autre) {
    return this.n * autre.d == this.d * autre.n;

};
Fraction.prototype.lt = function(autre) {
    return this.n * autre.d < this.d * autre.n;

};
Fraction.prototype.gt = function(autre) {
    return this.n * autre.d > this.d * autre.n;

};
Fraction.prototype.le = function(autre) {
    return this.n * autre.d <= this.d * autre.n;

};
Fraction.prototype.ge = function(autre) {
    return this.n * autre.d >= this.d * autre.n;

};

Fraction.prototype.plus = function(autre) {
    return new Fraction(this.n * autre.d + this.d * autre.n, this.d * autre.d);
};

Fraction.prototype.moins = function(autre) {
    return new Fraction(this.n * autre.d - this.d * autre.n, this.d * autre.d);
};

Fraction.prototype.fois = function(autre) {
    return new Fraction(this.n * autre.n, this.d * autre.d);
};

Fraction.prototype.sur = function(autre) {
    return new Fraction(this.n * autre.d, this.d * autre.n);
};

Fraction.prototype.inverse = function() {
  return new Fraction(this.d, this.n);
};

Fraction.prototype.opposé = function() {
  return new Fraction(-this.n, this.d);
};

Fraction.prototype.toFloat = function() {
  return this.n / this.d;
};

sommeFractions = function(f1, f2) {
  return new Fraction(f1.n * f2.d + f1.d * f2.n, f1.d * f2.d);
};

differenceFractions = function(f1, f2) {
  return new Fraction(f1.n * f2.d - f1.d * f2.n, f1.d * f2.d);
};

produitFractions = function(f1, f2) {
  return new Fraction(f1.n * f2.n, f1.d * f2.d);
};

quotientFractions = function(f1, f2) {
  return new Fraction(f1.n * f2.d, f1.d * f2.n);
};


egypt = function(uneFraction) {
  var e, f, réduites;
  f = uneFraction;
  e = Math.floor(f.toFloat());
  if(e>0){
  f = f.moins(new Fraction(e, 1));
  réduites = [e];
} else {
	réduites = [];
}
  while (f.n !== 1) {
    e = new Fraction(1, Math.ceil(f.inverse().toFloat()));
    réduites.push(e);
    f = f.moins(e);
  }
  réduites.push(f);
  return réduites;
};



Blockly.Blocks['fraction_constante'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldTextInput("2"), "NUM")
        .appendField("/")
        .appendField(new Blockly.FieldTextInput("3"), "DEN");
    this.setOutput(true, "Fraction");
    this.setColour(45);
    this.setTooltip('');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['constante_entier'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldTextInput("2"), "NUM");
    this.setOutput(true, "Fraction");
    this.setColour(45);
    this.setTooltip('entier vu comme fraction');
    this.setHelpUrl('');
  }
};


Blockly.Blocks['egale'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("Fraction")
        .appendField(new Blockly.FieldVariable("fraction"), "FR1")
        .appendField("=");
    this.setOutput(true, "Boolean");
    this.setColour(45);
    this.setTooltip('égalité de fractions');
    this.setHelpUrl('');
  }
};


Blockly.Blocks['inferieure'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("Fraction")
        .appendField(new Blockly.FieldVariable("fraction"), "FR1")
        .appendField("<");
    this.setOutput(true, "Boolean");
    this.setColour(45);
    this.setTooltip('inégalité de fractions');
    this.setHelpUrl('');
  }
};



Blockly.Blocks['superieure'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("Fraction")
        .appendField(new Blockly.FieldVariable("fraction"), "FR1")
        .appendField(">");
    this.setOutput(true, "Boolean");
    this.setColour(45);
    this.setTooltip('inégalité de fractions');
    this.setHelpUrl('');
  }
};


Blockly.Blocks['infegale'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("Fraction")
        .appendField(new Blockly.FieldVariable("fraction"), "FR1")
        .appendField("≤");
    this.setOutput(true, "Boolean");
    this.setColour(45);
    this.setTooltip('inégalité de fractions');
    this.setHelpUrl('');
  }
};



Blockly.Blocks['supegale'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("Fraction")
        .appendField(new Blockly.FieldVariable("fraction"), "FR1")
        .appendField("≥");
    this.setOutput(true, "Boolean");
    this.setColour(45);
    this.setTooltip('inégalité de fractions');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['frac_plus'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("Fraction")
        .appendField(new Blockly.FieldVariable("fraction"), "FR1")
        .appendField("+");
    this.setOutput(true, "Fraction");
    this.setColour(45);
    this.setTooltip('addition de fractions');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['frac_moins'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("Fraction")
        .appendField(new Blockly.FieldVariable("fraction"), "FR1")
        .appendField("-");
    this.setOutput(true, "Fraction");
    this.setColour(45);
    this.setTooltip('soustraction de fractions');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['frac_fois'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("Fraction")
        .appendField(new Blockly.FieldVariable("fraction"), "FR1")
        .appendField("×");
    this.setOutput(true, "Fraction");
    this.setColour(45);
    this.setTooltip('multiplication de fractions');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['frac_sur'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("Fraction")
        .appendField(new Blockly.FieldVariable("fraction"), "FR1")
        .appendField(":");
    this.setOutput(true, "Fraction");
    this.setColour(45);
    this.setTooltip('division de fractions');
    this.setHelpUrl('');
  }
};


Blockly.Blocks['frac_pow'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("Number")
        .appendField(new Blockly.FieldVariable("fraction"), "FR1")
        .appendField("^");
    this.setOutput(true, "Fraction");
    this.setColour(45);
    this.setTooltip('puissance');
    this.setHelpUrl('');
  }
};


Blockly.Blocks['inverse'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("Fraction")
        .appendField("1/")
    this.setOutput(true, "Fraction");
    this.setColour(45);
    this.setTooltip('inverse');
    this.setHelpUrl('');
  }
};


Blockly.Blocks['oppose'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("Fraction")
        .appendField("-")
    this.setOutput(true, "Fraction");
    this.setColour(45);
    this.setTooltip('opposé');
    this.setHelpUrl('');
  }
};


Blockly.Blocks['fraction_build'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("faire une fraction avec");
    this.appendValueInput("FR1")
        .setCheck("Number")
        .appendField("numérateur :");
    this.appendValueInput("FR2")
        .setCheck("Number")
        .appendField("dénominateur :");
    this.setOutput(true, "Fraction");
    this.setColour(45);
    this.setTooltip('définir une fraction');
    this.setHelpUrl('');
  }
};



Blockly.Blocks['egyptian'] = {
  init: function() {
    this.appendValueInput("FRAC")
        .setCheck("Fraction")
        .appendField(new Blockly.FieldImage("media/pyramide.png", 64, 41, "egypt"));
    this.setOutput(true, "Array");
    this.setColour(45);
    this.setTooltip('fractions égyptiennes');
    this.setHelpUrl('');
  }
};


Blockly.Blocks['numerateur'] = {
  init: function() {
    this.appendValueInput("FRAC")
        .setCheck("Fraction")
        .appendField("numérateur de");
    this.setOutput(true);
    this.setColour(45);
    this.setTooltip('le nombre qui sera divisé');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['denominateur'] = {
  init: function() {
    this.appendValueInput("FRAC")
        .setCheck("Fraction")
        .appendField("dénominateur de");
    this.setOutput(true);
    this.setColour(45);
    this.setTooltip('le nombre par lequel le numérateur sera divisé');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['arrondi'] = {
  init: function() {
    this.appendValueInput("FRAC")
        .setCheck("Fraction")
        .appendField("arrondi de");
    this.setOutput(true);
    this.setColour(45);
    this.setTooltip('le quotient');
    this.setHelpUrl('');
  }
};

Blockly.JavaScript['fraction_constante'] = function(block) {
  var text_num = block.getFieldValue('NUM');
  var text_den = block.getFieldValue('DEN');
  var code = 'new Fraction(' + text_num + ',' + text_den + ')';
  return [code, Blockly.JavaScript.ORDER_ATOMIC];
};

Blockly.JavaScript['constante_entier'] = function(block) {
  var text_num = block.getFieldValue('NUM');
  var code = 'new Fraction(' + text_num + ',1)';
  return [code, Blockly.JavaScript.ORDER_ATOMIC];
};


Blockly.JavaScript['egale'] = function(block) {
  var variable_fr1 = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('FR1'), Blockly.Variables.NAME_TYPE);
  var value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC);
  var code = variable_fr1 + '.eq(' + value_name + ')';
  return [code, Blockly.JavaScript.ORDER_EQUALITY];
};


Blockly.JavaScript['inferieure'] = function(block) {
  var variable_fr1 = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('FR1'), Blockly.Variables.NAME_TYPE);
  var value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC);
  var code = variable_fr1 + '.lt(' + value_name + ')';
  return [code, Blockly.JavaScript.ORDER_EQUALITY];
};


Blockly.JavaScript['superieure'] = function(block) {
  var variable_fr1 = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('FR1'), Blockly.Variables.NAME_TYPE);
  var value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC);
  var code = variable_fr1 + '.gt(' + value_name + ')';
  return [code, Blockly.JavaScript.ORDER_EQUALITY];
};


Blockly.JavaScript['supegale'] = function(block) {
  var variable_fr1 = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('FR1'), Blockly.Variables.NAME_TYPE);
  var value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC);
  var code = variable_fr1 + '.ge(' + value_name + ')';
  return [code, Blockly.JavaScript.ORDER_EQUALITY];
};


Blockly.JavaScript['infegale'] = function(block) {
  var variable_fr1 = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('FR1'), Blockly.Variables.NAME_TYPE);
  var value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC);
  var code = variable_fr1 + '.le(' + value_name + ')';
  return [code, Blockly.JavaScript.ORDER_EQUALITY];
};

Blockly.JavaScript['frac_plus'] = function(block) {
  var variable_fr1 = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('FR1'), Blockly.Variables.NAME_TYPE);
  var value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC);
  var code = variable_fr1 + '.plus(' + value_name + ')';
  return [code, Blockly.JavaScript.ORDER_ADDITION];
};

Blockly.JavaScript['frac_moins'] = function(block) {
  var variable_fr1 = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('FR1'), Blockly.Variables.NAME_TYPE);
  var value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC);
  var code = variable_fr1 + '.moins(' + value_name + ')';
  return [code, Blockly.JavaScript.ORDER_SUBTRACTION];
};

Blockly.JavaScript['frac_fois'] = function(block) {
  var variable_fr1 = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('FR1'), Blockly.Variables.NAME_TYPE);
  var value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC);
  var code = variable_fr1 + '.fois(' + value_name + ')';
  return [code, Blockly.JavaScript.ORDER_MULTIPLICATION];
};

Blockly.JavaScript['frac_sur'] = function(block) {
  var variable_fr1 = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('FR1'), Blockly.Variables.NAME_TYPE);
  var value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC);
  var code = variable_fr1 + '.sur(' + value_name + ')';
  return [code, Blockly.JavaScript.ORDER_DIVISION];
};

Blockly.JavaScript['frac_pow'] = function(block) {
  var variable_fr1 = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('FR1'), Blockly.Variables.NAME_TYPE);
  var value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC);
  var code = 'new Fraction(Math.pow(' + variable_fr1 + '.n,' + value_name + '),Math.pow(' + variable_fr1 + '.d,' + value_name + '))';
  return [code, Blockly.JavaScript.ORDER_NONE];
};


Blockly.JavaScript['inverse'] = function(block) {
  var value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC);
  var code = value_name + '.inverse()';
  return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['oppose'] = function(block) {
  var value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC);
  var code = value_name + '.opposé()';
  return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['fraction_build'] = function(block) {
  var value_fr1 = Blockly.JavaScript.valueToCode(block, 'FR1', Blockly.JavaScript.ORDER_ATOMIC);
  var value_fr2 = Blockly.JavaScript.valueToCode(block, 'FR2', Blockly.JavaScript.ORDER_ATOMIC);
  var code = 'new Fraction(' + value_fr1 + ',' + value_fr2 + ')';
  return [code, Blockly.JavaScript.ORDER_ATOMIC];
};


Blockly.JavaScript['egyptian'] = function(block) {
  var value_frac = Blockly.JavaScript.valueToCode(block, 'FRAC', Blockly.JavaScript.ORDER_ATOMIC);
  var code = 'egypt(' + value_frac + ')';
  return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['numerateur'] = function(block) {
  var value_frac = Blockly.JavaScript.valueToCode(block, 'FRAC', Blockly.JavaScript.ORDER_ATOMIC);
  var code = value_frac + '.n';
  return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['denominateur'] = function(block) {
  var value_frac = Blockly.JavaScript.valueToCode(block, 'FRAC', Blockly.JavaScript.ORDER_ATOMIC);
  var code = value_frac + '.d';
  return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['arrondi'] = function(block) {
  var value_frac = Blockly.JavaScript.valueToCode(block, 'FRAC', Blockly.JavaScript.ORDER_ATOMIC);
  var code = value_frac + '.toFloat()';
  return [code, Blockly.JavaScript.ORDER_NONE];
};





