Blockly.JavaScript['sophus_angle'] = function(block) {
  var angledeg = block.getFieldValue('angle'); 
  return angledeg;
};



Blockly.JavaScript['sophus_carre'] = function(block) {
  var varName = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var dropdown_pow = block.getFieldValue('POW');
  return varName + ' = Math.pow(' + varName + ',' + dropdown_pow + ');\n';
};

Blockly.JavaScript['sophus_doubler'] = function(block) {
  var varName = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var choix = block.getFieldValue('CHOIX');
  return varName + ' = ' + varName +
      ' * ' + choix + ';\n';
};

Blockly.JavaScript['sophus_augmenter'] = function(block) {
  var argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA',
      Blockly.JavaScript.ORDER_ADDITION) || '0';
  var varName = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  return varName + ' = ' + varName +
      ' + ' + argument0 + ';\n';
};

Blockly.JavaScript['sophus_diminuer'] = function(block) {
  var argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA',
      Blockly.JavaScript.ORDER_ADDITION) || '0';
  var varName = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  return varName + ' = ' + varName +
      ' - ' + argument0 + ';\n';
};

Blockly.JavaScript['sophus_augmenter_fract'] = function(block) {
  var varName = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA',
      Blockly.JavaScript.ORDER_ADDITION) || '0';
  var dropdown_denom = block.getFieldValue('DENOM');
  return varName + ' = ' + varName + " + " + varName + " * " + argument0 + " / " + dropdown_denom + ";\n";
};


Blockly.JavaScript['sophus_augmenter_pct'] = function(block) {
  var argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA',
      Blockly.JavaScript.ORDER_ADDITION) || '0';
  var varName = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  return varName + ' = ' + varName +
      ' * (1 + ' + argument0 + ' / 100)' + ';\n';
};

Blockly.JavaScript['sophus_diminuer_fract'] = function(block) {
  var varName = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA',
      Blockly.JavaScript.ORDER_ADDITION) || '0';
  var dropdown_denom = block.getFieldValue('DENOM');
  return varName + ' = ' + varName + " - " + varName + " * " + argument0 + " / " + dropdown_denom + ";\n";
};


Blockly.JavaScript['sophus_diminuer_pct'] = function(block) {
  var argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA',
      Blockly.JavaScript.ORDER_ADDITION) || '0';
  var varName = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  return varName + ' = ' + varName +
      ' * (1 - ' + argument0 + ' / 100)' + ';\n';
};

// ameliore la traduction quand la borne sup d'un Pour est une variable
Blockly.JavaScript['controls_for'] = function(block) {
  // For loop.
  var variable0 = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var argument0 = Blockly.JavaScript.valueToCode(block, 'FROM',
      Blockly.JavaScript.ORDER_ASSIGNMENT) || '0';
  var argument1 = Blockly.JavaScript.valueToCode(block, 'TO',
      Blockly.JavaScript.ORDER_ASSIGNMENT) || '0';
  var increment = Blockly.JavaScript.valueToCode(block, 'BY',
      Blockly.JavaScript.ORDER_ASSIGNMENT) || '1';
  var branch = Blockly.JavaScript.statementToCode(block, 'DO');
  branch = Blockly.JavaScript.addLoopTrap(branch, block.id);
  var code;
  if (Blockly.isNumber(increment)) {
    // All arguments are simple numbers.
    var up = parseFloat(increment) >= 0;
    code = 'for (' + variable0 + ' = ' + argument0 + '; ' +
        variable0 + (up ? ' <= ' : ' >= ') + argument1 + '; ' +
        variable0;
    var step = Math.abs(parseFloat(increment));
    if (step == 1) {
      code += up ? '++' : '--';
    } else {
      code += (up ? ' += ' : ' -= ') + step;
    }
    code += ') {\n' + branch + '}\n';
  } else {
    var up = true;
    code = 'for (' + variable0 + ' = ' + argument0 + '; ' +
        variable0 + (up ? ' <= ' : ' >= ') + argument1 + '; ' +
        variable0;
    code += (up ? ' += ' : ' -= ') + increment;
    code += ') {\n' + branch + '}\n';
  }
  return code;
};



Blockly.JavaScript['sophus_multiplier'] = function(block) {
  var argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA',
      Blockly.JavaScript.ORDER_ADDITION) || '0';
  var varName = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  return varName + ' = ' + varName +
      ' * ' + argument0 + ';\n';
};



Blockly.JavaScript['sophus_diviser'] = function(block) {
  var argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA',
      Blockly.JavaScript.ORDER_ADDITION) || '0';
  var varName = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  return varName + ' = ' + varName +
      ' / ' + argument0 + ';\n';
};


Blockly.JavaScript['sophus_multiplier_fract'] = function(block) {
  var varName = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA',
      Blockly.JavaScript.ORDER_ADDITION) || '0';
  var dropdown_denom = block.getFieldValue('DENOM');
  return varName + ' = ' + varName + " * " + argument0 + " / " + dropdown_denom + ";\n";
};



Blockly.JavaScript['sophus_diviser_fract'] = function(block) {
  var varName = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA',
      Blockly.JavaScript.ORDER_ADDITION) || '0';
  var dropdown_denom = block.getFieldValue('DENOM');
  return varName + ' = ' + varName + " * " + dropdown_denom + " / " + argument0 + ";\n";
};




Blockly.JavaScript['sophus_arrondir'] = function(block) {
  var varName = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA',
      Blockly.JavaScript.ORDER_ADDITION) || '0';
  var dropdown_grad = block.getFieldValue('GRAD');
  return varName + ' = Math.round(' + varName + " / " + dropdown_grad + argument0 + ") * " + dropdown_grad + argument0 + ";\n";
};





Blockly.JavaScript['sophus_tronquer'] = function(block) {
  var varName = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  var argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA',
      Blockly.JavaScript.ORDER_ADDITION) || '0';
  var dropdown_grad = block.getFieldValue('GRAD');
  return varName + ' = Math.floor(' + varName + " / " + dropdown_grad + argument0 + ") * " + dropdown_grad + argument0 + ";\n";
};



Blockly.JavaScript['sophus_puissance'] = function(block) {
  var argument0 = Blockly.JavaScript.valueToCode(block, 'POW',
      Blockly.JavaScript.ORDER_ADDITION) || '0';
  var varName = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  return varName + ' = Math.pow(' + varName +
      ' , ' + argument0 + ');\n';
};



Blockly.JavaScript['sophus_inverser'] = function(block) {
  var varName = Blockly.JavaScript.variableDB_.getName(
      block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE);
  return varName + ' = ' + " 1 / " + varName + ';\n';
};


Blockly.JavaScript['big_aff'] = function(block) {
  var value_var = Blockly.JavaScript.valueToCode(block, 'VAR', Blockly.JavaScript.ORDER_ATOMIC);
  var code = 'document.getElementById("sortieNum").value += "\\n" + ' + value_var + ";\n";
  return code;
};

Blockly.JavaScript['big_efface'] = function(block) {
  var code = 'document.getElementById("sortieNum").value = "";\n';
  return code;
};



Blockly.JavaScript['tortue_x'] = function(block) {
  var code = 'toto1.x-320';
  return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['tortue_y'] = function(block) {
  var code = '240-toto1.y';
  return [code, Blockly.JavaScript.ORDER_NONE];
};


Blockly.JavaScript['tortue_t'] = function(block) {
  var code = '-toto1.t/Math.PI*180';
  return [code, Blockly.JavaScript.ORDER_NONE];
};

Blockly.JavaScript['tortue_c'] = function(block) {
  var code = 'toto1.c';
  return [code, Blockly.JavaScript.ORDER_NONE];
};



Blockly.JavaScript['avancer'] = function(block) {
  var value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC);
  var code = 'toto1.av('+value_name+');\n';
  return code;
};


Blockly.JavaScript['reculer'] = function(block) {
  var value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC);
  var code = 'toto1.re('+value_name+');\n';
  return code;
};

Blockly.JavaScript['tortue_gauche'] = function(block) {
  var angle_name = block.getFieldValue('NAME');
  var code = 'toto1.tg('+angle_name+');\n';
  return code;
};
Blockly.JavaScript['tortue_droite'] = function(block) {
  var angle_name = block.getFieldValue('NAME');
  var code = 'toto1.td('+angle_name+');\n';
  return code;
};
Blockly.JavaScript['var_gauche'] = function(block) {
  var value_angle = Blockly.JavaScript.valueToCode(block, 'ANGLE', Blockly.JavaScript.ORDER_ATOMIC);
  var code = 'toto1.tg('+value_angle+');\n';
  return code;
};
Blockly.JavaScript['var_droite'] = function(block) {
  var value_angle = Blockly.JavaScript.valueToCode(block, 'ANGLE', Blockly.JavaScript.ORDER_ATOMIC);
  var code = 'toto1.td('+value_angle+');\n';
  return code;
};
Blockly.JavaScript['mettre_angle'] = function(block) {
  var value_angle = Blockly.JavaScript.valueToCode(block, 'ANGLE', Blockly.JavaScript.ORDER_ATOMIC);
  var code = 'toto1.orient('+value_angle+');\n';
  return code;
};


Blockly.JavaScript['teleport'] = function(block) {
  var text_x = block.getFieldValue('X');
  var text_y = block.getFieldValue('Y');
  var code = 'toto1.teleport('+text_x+'+320,240-('+text_y+'));\n';
  return code;
};

Blockly.JavaScript['teleport_var'] = function(block) {
  var variable_x = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('X'), Blockly.Variables.NAME_TYPE);
  var variable_y = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('Y'), Blockly.Variables.NAME_TYPE);
  var code = 'toto1.teleport('+variable_x+'+320'+',240-('+variable_y+'));\n';
  return code;
};
Blockly.JavaScript['lever_stylo'] = function(block) {
  var code = 'toto1.penup();\n';
  return code;
};

Blockly.JavaScript['baisser_stylo'] = function(block) {
  var code = 'toto1.pendown();\n';
  return code;
};


Blockly.JavaScript['scribe'] = function(block) {
  var value_texte = Blockly.JavaScript.valueToCode(block, 'texte', Blockly.JavaScript.ORDER_ATOMIC);
  var code = 'toto1.write('+value_texte+');\n';
  return code;
};

Blockly.JavaScript['tampon'] = function(block) {
  var code = 'toto1.cercle();\n';
  return code;
};

Blockly.JavaScript['couleur_stylo'] = function(block) {
  var colour_colstyle = block.getFieldValue('colstyle');
  var code = 'toto1.c = "'+colour_colstyle+'";\n';
  return code;
};


Blockly.JavaScript['eff_svg'] = function(block) {
  var code = 'effaceDessin();\n';
  return code;
};
Blockly.JavaScript['reset'] = function(block) {
  var code = 'effaceDessin();toto1.t = 0; toto1.teleport(320,240);\n';
  return code;
};
