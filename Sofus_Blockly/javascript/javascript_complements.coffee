Blockly.JavaScript['sophus_angle'] = (block) ->
  angledeg = block.getFieldValue('angle')

Blockly.JavaScript['sophus_carre'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  dropdown_pow = block.getFieldValue('POW')
  varName + ' = Math.pow(' + varName + ',' + dropdown_pow + ');\n'

Blockly.JavaScript['sophus_doubler'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  choix = block.getFieldValue('CHOIX')
  varName + ' = ' + varName + ' * ' + choix + ';\n'

Blockly.JavaScript['sophus_augmenter'] = (block) ->
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + ' = ' + varName + ' + ' + argument0 + ';\n'

Blockly.JavaScript['sophus_diminuer'] = (block) ->
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + ' = ' + varName + ' - ' + argument0 + ';\n'

Blockly.JavaScript['sophus_augmenter_fract'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  dropdown_denom = block.getFieldValue('DENOM')
  varName + ' = ' + varName + ' + ' + varName + ' * ' + argument0 + ' / ' + dropdown_denom + ';\n'

Blockly.JavaScript['sophus_augmenter_pct'] = (block) ->
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + ' = ' + varName + ' * (1 + ' + argument0 + ' / 100)' + ';\n'

Blockly.JavaScript['sophus_diminuer_fract'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  dropdown_denom = block.getFieldValue('DENOM')
  varName + ' = ' + varName + ' - ' + varName + ' * ' + argument0 + ' / ' + dropdown_denom + ';\n'

Blockly.JavaScript['sophus_diminuer_pct'] = (block) ->
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + ' = ' + varName + ' * (1 - ' + argument0 + ' / 100)' + ';\n'

# ameliore la traduction quand la borne sup d'un Pour est une variable

Blockly.JavaScript['controls_for'] = (block) ->
  `var up`
  # For loop.
  variable0 = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  argument0 = Blockly.JavaScript.valueToCode(block, 'FROM', Blockly.JavaScript.ORDER_ASSIGNMENT) or '0'
  argument1 = Blockly.JavaScript.valueToCode(block, 'TO', Blockly.JavaScript.ORDER_ASSIGNMENT) or '0'
  increment = Blockly.JavaScript.valueToCode(block, 'BY', Blockly.JavaScript.ORDER_ASSIGNMENT) or '1'
  branch = Blockly.JavaScript.statementToCode(block, 'DO')
  branch = Blockly.JavaScript.addLoopTrap(branch, block.id)
  if Blockly.isNumber(increment)
    # All arguments are simple numbers.
    up = parseFloat(increment) >= 0
    code = 'for (' + variable0 + ' = ' + argument0 + '; ' + variable0 + (if up then ' <= ' else ' >= ') + argument1 + '; ' + variable0
    step = Math.abs(parseFloat(increment))
    if step == 1
      code += if up then '++' else '--'
    else
      code += (if up then ' += ' else ' -= ') + step
    code += ') {\n' + branch + '}\n'
  else
    up = true
    code = 'for (' + variable0 + ' = ' + argument0 + '; ' + variable0 + (if up then ' <= ' else ' >= ') + argument1 + '; ' + variable0
    code += (if up then ' += ' else ' -= ') + increment
    code += ') {\n' + branch + '}\n'
  return code

Blockly.JavaScript['sophus_multiplier'] = (block) ->
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + ' = ' + varName + ' * ' + argument0 + ';\n'

Blockly.JavaScript['sophus_diviser'] = (block) ->
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + ' = ' + varName + ' / ' + argument0 + ';\n'

Blockly.JavaScript['sophus_multiplier_fract'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  dropdown_denom = block.getFieldValue('DENOM')
  varName + ' = ' + varName + ' * ' + argument0 + ' / ' + dropdown_denom + ';\n'

Blockly.JavaScript['sophus_diviser_fract'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  dropdown_denom = block.getFieldValue('DENOM')
  varName + ' = ' + varName + ' * ' + dropdown_denom + ' / ' + argument0 + ';\n'

Blockly.JavaScript['sophus_arrondir'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  dropdown_grad = block.getFieldValue('GRAD')
  varName + ' = Math.round(' + varName + ' / ' + dropdown_grad + argument0 + ') * ' + dropdown_grad + argument0 + ';\n'

Blockly.JavaScript['sophus_tronquer'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  dropdown_grad = block.getFieldValue('GRAD')
  varName + ' = Math.floor(' + varName + ' / ' + dropdown_grad + argument0 + ') * ' + dropdown_grad + argument0 + ';\n'

Blockly.JavaScript['sophus_puissance'] = (block) ->
  argument0 = Blockly.JavaScript.valueToCode(block, 'POW', Blockly.JavaScript.ORDER_ADDITION) or '0'
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + ' = Math.pow(' + varName + ' , ' + argument0 + ');\n'

Blockly.JavaScript['sophus_inverser'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + ' = ' + ' 1 / ' + varName + ';\n'

Blockly.JavaScript['big_aff'] = (block) ->
  value_var = Blockly.JavaScript.valueToCode(block, 'VAR', Blockly.JavaScript.ORDER_ATOMIC)
  code = 'document.getElementById("sortieNum").value += "\\n" + ' + value_var + ';\n'

Blockly.JavaScript['big_efface'] = (block) ->
  code = 'document.getElementById("sortieNum").value = "";\n'

Blockly.JavaScript['tortue_x'] = (block) ->
  code = 'totos[toto].x-320'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['tortue_y'] = (block) ->
  code = '240-totos[toto].y'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['tortue_t'] = (block) ->
  code = '-totos[toto].t/Math.PI*180'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['tortue_c'] = (block) ->
  code = 'totos[toto].c'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['avancer'] = (block) ->
  value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC)
  code = "totos[toto].av(#{value_name});\n"

Blockly.JavaScript['reculer'] = (block) ->
  value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC)
  code = 'totos[toto].re(' + value_name + ');\n'

Blockly.JavaScript['tortue_gauche'] = (block) ->
  angle_name = block.getFieldValue('NAME')
  code = 'totos[toto].tg(' + angle_name + ');\n'

Blockly.JavaScript['tortue_droite'] = (block) ->
  angle_name = block.getFieldValue('NAME')
  code = 'totos[toto].td(' + angle_name + ');\n'

Blockly.JavaScript['var_gauche'] = (block) ->
  value_angle = Blockly.JavaScript.valueToCode(block, 'ANGLE', Blockly.JavaScript.ORDER_ATOMIC)
  code = 'totos[toto].tg(' + value_angle + ');\n'

Blockly.JavaScript['var_droite'] = (block) ->
  value_angle = Blockly.JavaScript.valueToCode(block, 'ANGLE', Blockly.JavaScript.ORDER_ATOMIC)
  code = 'totos[toto].td(' + value_angle + ');\n'

Blockly.JavaScript['mettre_angle'] = (block) ->
  value_angle = Blockly.JavaScript.valueToCode(block, 'ANGLE', Blockly.JavaScript.ORDER_ATOMIC)
  code = 'totos[toto].orient(' + value_angle + ');\n'

Blockly.JavaScript['teleport'] = (block) ->
  text_x = block.getFieldValue('X')
  text_y = block.getFieldValue('Y')
  code = 'totos[toto].teleport(' + text_x + '+320,240-(' + text_y + '));\n'

Blockly.JavaScript['tortue_teleport'] = (block) ->
  value_abs = Blockly.JavaScript.valueToCode(block, 'ABS', Blockly.JavaScript.ORDER_ATOMIC)
  value_ord = Blockly.JavaScript.valueToCode(block, 'ORD', Blockly.JavaScript.ORDER_ATOMIC)
  code = 'totos[toto].teleport(' + value_abs + '+320' + ',240-(' + value_ord + '));\n'
  code

Blockly.JavaScript['teleport_var'] = (block) ->
  variable_x = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('X'), Blockly.Variables.NAME_TYPE)
  variable_y = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('Y'), Blockly.Variables.NAME_TYPE)
  code = 'totos[toto].teleport(' + variable_x + '+320' + ',240-(' + variable_y + '));\n'

Blockly.JavaScript['cacher_tortue'] = (block) ->
  code = 'totos[toto].hide();\n'

Blockly.JavaScript['montrer_tortue'] = (block) ->
  code = 'totos[toto].show();\n'

Blockly.JavaScript['lever_stylo'] = (block) ->
  code = 'totos[toto].penup();\n'

Blockly.JavaScript['baisser_stylo'] = (block) ->
  code = 'totos[toto].pendown();\n'

Blockly.JavaScript['scribe'] = (block) ->
  value_texte = Blockly.JavaScript.valueToCode(block, 'texte', Blockly.JavaScript.ORDER_ATOMIC)
  code = "totos[toto].write('#{value_texte}');\n"

Blockly.JavaScript['tampon'] = (block) ->
  code = 'totos[toto].cercle();\n'

Blockly.JavaScript['couleur_stylo'] = (block) ->
  colour_colstyle = block.getFieldValue('colstyle')
  code = "totos[toto].c = '#{colour_colstyle}';\n"

Blockly.JavaScript['eff_svg'] = (block) ->
  code = 'effaceDessin();\n'

Blockly.JavaScript['reset'] = (block) ->
  code = 'effaceDessin(); toto = 1; ' + 'totos[toto].t = 0;' + 'totos[toto].teleport(320,240);\n'


Blockly.JavaScript['axeX'] = (block) ->
  code = 'axeX();\n'

Blockly.JavaScript['axeY'] = (block) ->
  code = 'axeY();\n'

Blockly.JavaScript['axes'] = (block) ->
  code = 'axes();\n'

Blockly.JavaScript['grille'] = (block) ->
  code = 'grille();\n'

Blockly.JavaScript['creer_tortue'] = (block) ->
  text_n = block.getFieldValue('N')  
  code = "totos['#{text_n}'] = new Tortue(#{value_name});\nconsole.log(totos);\n"

Blockly.JavaScript['creer_tortue_var'] = (block) ->
  value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC)
  code = "totos[#{value_name}] = new Tortue(#{value_name});\nconsole.log('Après création dune tortue, voici les totos:',totos);\n"

Blockly.JavaScript['choisir_tortue'] = (block) ->
  text_n = block.getFieldValue('N')
  statements = Blockly.JavaScript.statementToCode(block, 'DO')
  code = "toto = #{text_n};\n#{statements}"

Blockly.JavaScript['choisir_tortue_var'] = (block) ->
  value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC)
  statements = Blockly.JavaScript.statementToCode(block, 'DO')
  code = "toto = #{value_name};\n#{statements}"

Blockly.JavaScript['distance_avec_tortue_var'] = (block) ->
  value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC)
  code = "totos[toto].distance(totos[#{value_name}]);\n"

Blockly.JavaScript['tourner_vers_tortue_var'] = (block) ->
  value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC)
  code = 'totos[toto].azimuth(totos[' + value_name + ']);\n'

Blockly.JavaScript['costume_suivant'] = (block) ->
  code = 'totos[toto].costume_suivant();\n'

Blockly.JavaScript['costume_pred'] = (block) ->
  code = 'totos[toto].costume_pred();\n'

Blockly.JavaScript['costume'] = (block) ->
  dropdown_cid = block.getFieldValue('CID')
  code = 'totos[toto].avatar('+ dropdown_cid+');\n'




Blockly.JavaScript['repeter_doucement'] = (block) ->
  times = Blockly.JavaScript.valueToCode(block, 'TIMES', Blockly.JavaScript.ORDER_ATOMIC)
  statements = Blockly.JavaScript.statementToCode(block, 'DO')
  code = "for (var i = 0; i < #{times}; i++) { setTimeout(function(){#{statements}}, 1000);$('#graphique').show(100);}\n"
