reverseT = (s) ->
	ss = ''
	for t in [s.length-1..0] by -1
		ss += s.charAt t
	ss

Blockly.JavaScript['decimal_comp'] = (block) ->
  value_nb1 = Blockly.JavaScript.valueToCode(block, 'NB1', Blockly.JavaScript.ORDER_ATOMIC)
  dropdown_type = block.getFieldValue('type')
  value_nb2 = Blockly.JavaScript.valueToCode(block, 'NB2', Blockly.JavaScript.ORDER_ATOMIC)
  # TODO: Assemble JavaScript into code variable.
  switch dropdown_type
      when 'EQ' then code = 'Math.abs('+value_nb2+'-'+value_nb1+')<1e-10'
      when 'LT' then code = value_nb2+'-'+value_nb1+'>1e-10'
      when 'GT' then code = value_nb1+'-'+value_nb2+'>1e-10'
      when 'NEQ' then code ='Math.abs('+value_nb2+'-'+value_nb1+')>1e-10'
      when 'LE' then code = value_nb2+'-'+value_nb1+'<1e-10'
      when 'GE' then code = value_nb1+'-'+value_nb2+'<1e-10'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]


Blockly.JavaScript['sophus_angle'] = (block) ->
  [
    block.getFieldValue('NAME')
    Blockly.JavaScript.ORDER_NONE
  ]
  

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
# auteur: Patrick Raffinat

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

Blockly.JavaScript['sophus_incrementer'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + ' += 1 ;\n'

Blockly.JavaScript['sophus_decrementer'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + ' -= 1 ;\n'

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

Blockly.JavaScript['frac_gauche'] = (block) ->
  value_numer = Blockly.JavaScript.valueToCode(block, 'NUMER', Blockly.JavaScript.ORDER_ATOMIC)
  code = 'totos[toto].tg(' + value_numer + '*15' + ');\n'

Blockly.JavaScript['frac_droite'] = (block) ->
  value_numer = Blockly.JavaScript.valueToCode(block, 'NUMER', Blockly.JavaScript.ORDER_ATOMIC)
  code = 'totos[toto].td(' + value_numer + '*15' + ');\n'


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
  code = "totos[toto].write(#{value_texte});\n"

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
  code = "totos[toto].distance(totos[#{value_name}])"
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

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

# vecteurs et matrices

Blockly.JavaScript['vec_const'] = (block) ->
  text_x = block.getFieldValue('x')
  text_y = block.getFieldValue('y')
  code = 'Vector.create([' + text_x + ',' + text_y + '])'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_expr'] = (block) ->
  text_x = Blockly.JavaScript.valueToCode(block, 'ABS', Blockly.JavaScript.ORDER_ATOMIC)
  text_y = Blockly.JavaScript.valueToCode(block, 'ORD', Blockly.JavaScript.ORDER_ATOMIC)
  code = 'Vector.create([' + text_x + ',' + text_y + '])'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_expr3D'] = (block) ->
  text_x = Blockly.JavaScript.valueToCode(block, 'ABS', Blockly.JavaScript.ORDER_ATOMIC)
  text_y = Blockly.JavaScript.valueToCode(block, 'ORD', Blockly.JavaScript.ORDER_ATOMIC)
  text_z = Blockly.JavaScript.valueToCode(block, 'COT', Blockly.JavaScript.ORDER_ATOMIC)
  code = 'Vector.create([' + text_x + ',' + text_y + ',' + text_z + '])'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_3D'] = (block) ->
  text_x = block.getFieldValue('x')
  text_y = block.getFieldValue('y')
  text_z = block.getFieldValue('z')
  code = 'Vector.create([' + text_x + ',' + text_y + ',' + text_z + '])'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_alea'] = (block) ->
  code = 'Vector.Random(2)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_alea3'] = (block) ->
  code = 'Vector.Random(3)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_nul'] = (block) ->
  code = 'Vector.Zero(2)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_nul3'] = (block) ->
  code = 'Vector.Zero(3)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_aff'] = (block) ->
  value_vec = Blockly.JavaScript.valueToCode(block, 'vec', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_vec + '.inspect()'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_eq'] = (block) ->
  variable_lui = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('lui'), Blockly.Variables.NAME_TYPE)
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = variable_lui + '.eql(' + value_autre + ')'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_add'] = (block) ->
  variable_lui = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('lui'), Blockly.Variables.NAME_TYPE)
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = variable_lui + '.add(' + value_autre + ')'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_sub'] = (block) ->
  variable_lui = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('lui'), Blockly.Variables.NAME_TYPE)
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = variable_lui + '.subtract(' + value_autre + ')'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_dot'] = (block) ->
  variable_lui = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('lui'), Blockly.Variables.NAME_TYPE)
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = variable_lui + '.dot(' + value_autre + ')'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_angle'] = (block) ->
  variable_lui = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('lui'), Blockly.Variables.NAME_TYPE)
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = variable_lui + '.angleFrom(' + value_autre + ')'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_distance'] = (block) ->
  variable_lui = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('lui'), Blockly.Variables.NAME_TYPE)
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = variable_lui + '.distanceFrom(' + value_autre + ')'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_abscisse'] = (block) ->
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_autre + '.e(1)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_ordonnee'] = (block) ->
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_autre + '.e(2)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_cote'] = (block) ->
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_autre + '.e(3)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_colineaire'] = (block) ->
  variable_lui = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('lui'), Blockly.Variables.NAME_TYPE)
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = '(' + variable_lui + '.isAntiparallelTo(' + value_autre + ')) || (' + variable_lui + '.isParallelTo(' + value_autre + '))'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_perpendiculaire'] = (block) ->
  variable_lui = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('lui'), Blockly.Variables.NAME_TYPE)
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = variable_lui + '.isPerpendicularTo(' + value_autre + ')'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_fois'] = (block) ->
  variable_lui = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('lui'), Blockly.Variables.NAME_TYPE)
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = variable_lui + '.multiply(' + value_autre + ')'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_foisbis'] = (block) ->
  text_facteur = block.getFieldValue('facteur')
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_autre + '.multiply(' + text_facteur + ')'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_symmetry'] = (block) ->
  variable_lui = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('lui'), Blockly.Variables.NAME_TYPE)
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = variable_lui + '.reflectionIn(' + value_autre + ')'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_rotation'] = (block) ->
  variable_lui = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('lui'), Blockly.Variables.NAME_TYPE)
  text_angle = block.getFieldValue('angle')
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = variable_lui + '.rotate(' + text_angle + ',' + value_autre + ')'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_norme'] = (block) ->
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_autre + '.modulus()'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['vec_unitaire'] = (block) ->
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_autre + '.toUnitVector()'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['normer_sofus'] = (block) ->
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_autre + ' = ' + value_autre + '.toUnitVector();\n'
  code

Blockly.JavaScript['vec_diagonal'] = (block) ->
  value_vecteur = Blockly.JavaScript.valueToCode(block, 'vecteur', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_vecteur + '.toDiagonalMatrix()'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_matrice'] = (block) ->
  text_a11 = block.getFieldValue('a11')
  text_a12 = block.getFieldValue('a12')
  text_a21 = block.getFieldValue('a21')
  text_a22 = block.getFieldValue('a22')
  code = 'Matrix.create([[' + text_a11 + ',' + text_a12 + '],[' + text_a21 + ',' + text_a22 + ']])'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_col'] = (block) ->
  value_c1 = Blockly.JavaScript.valueToCode(block, 'C1', Blockly.JavaScript.ORDER_NONE)
  value_c2 = Blockly.JavaScript.valueToCode(block, 'C2', Blockly.JavaScript.ORDER_NONE)
  code = 'Matrix.create('+value_c1+').augment('+value_c2+')'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat3D_col'] = (block) ->
  value_c1 = Blockly.JavaScript.valueToCode(block, 'C1', Blockly.JavaScript.ORDER_NONE)
  value_c2 = Blockly.JavaScript.valueToCode(block, 'C2', Blockly.JavaScript.ORDER_NONE)
  value_c3 = Blockly.JavaScript.valueToCode(block, 'C3', Blockly.JavaScript.ORDER_NONE)
  code = 'Matrix.create('+value_c1+').augment('+value_c2+').augment('+value_c3+')'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_3D'] = (block) ->
  text_a11 = block.getFieldValue('a11')
  text_a12 = block.getFieldValue('a12')
  text_a13 = block.getFieldValue('a13')
  text_a21 = block.getFieldValue('a21')
  text_a22 = block.getFieldValue('a22')
  text_a23 = block.getFieldValue('a23')
  text_a31 = block.getFieldValue('a31')
  text_a32 = block.getFieldValue('a32')
  text_a33 = block.getFieldValue('a33')
  code = 'Matrix.create([[' + text_a11 + ',' + text_a12 + ',' + text_a13 + '],[' + text_a21 + ',' + text_a22 + ',' + text_a23 + '],[' + text_a31 + ',' + text_a32 + ',' + text_a33 + ']])'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_diag'] = (block) ->
  text_a11 = block.getFieldValue('a11')
  text_a22 = block.getFieldValue('a22')
  code = 'Matrix.Diagonal([' + text_a11 + ',' + text_a22 + '])'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_id'] = (block) ->
  code = 'Matrix.I(2)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_id3'] = (block) ->
  code = 'Matrix.I(3)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_alea'] = (block) ->
  code = 'Matrix.Random(2,2)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_alea3'] = (block) ->
  code = 'Matrix.Random(3,3)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_nulle'] = (block) ->
  code = 'Matrix.Zero(2,2)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_nulle3'] = (block) ->
  code = 'Matrix.Zero(3,3)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_rotation'] = (block) ->
  angle_angle = block.getFieldValue('angle')
  code = 'Matrix.Rotation(Math.PI*' + angle_angle + '/180)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_colonne1'] = (block) ->
  value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_name + '.col(1)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_colonne2'] = (block) ->
  value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_name + '.col(2)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_colonne3'] = (block) ->
  value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_name + '.col(3)'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_diagonal'] = (block) ->
  value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_name + '.diagonal()'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_det'] = (block) ->
  value_matr = Blockly.JavaScript.valueToCode(block, 'matr', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_matr + '.determinant()'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_inv'] = (block) ->
  value_matr = Blockly.JavaScript.valueToCode(block, 'matr', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_matr + '.inverse()'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['inverser_mat'] = (block) ->
  value_matr = Blockly.JavaScript.valueToCode(block, 'matr', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_matr + " = " + value_matr + '.inverse();\n'
  code

Blockly.JavaScript['transposer_mat'] = (block) ->
  value_matr = Blockly.JavaScript.valueToCode(block, 'matr', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_matr + " = " + value_matr + '.transpose();\n'
  code

Blockly.JavaScript['arrondir_mat'] = (block) ->
  value_matr = Blockly.JavaScript.valueToCode(block, 'matr', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_matr + " = " + value_matr + '.round();\n'
  code

Blockly.JavaScript['mult_sofus_mat'] = (block) ->
  value_matr = Blockly.JavaScript.valueToCode(block, 'matr', Blockly.JavaScript.ORDER_ATOMIC)
  value_vec = Blockly.JavaScript.valueToCode(block, 'vec', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_matr + " = " + value_matr + '.x(' + value_vec + ');\n'
  code

Blockly.JavaScript['mult_gauche'] = (block) ->
  value_matr = Blockly.JavaScript.valueToCode(block, 'matr', Blockly.JavaScript.ORDER_ATOMIC)
  value_vec = Blockly.JavaScript.valueToCode(block, 'vec', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_vec + " = " + value_matr + '.x(' + value_vec + ');\n'
  code

Blockly.JavaScript['vec_multiplier'] = (block) ->
  value_matr = Blockly.JavaScript.valueToCode(block, 'matr', Blockly.JavaScript.ORDER_ATOMIC)
  value_vec = Blockly.JavaScript.valueToCode(block, 'vec', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_matr + " = " + value_matr + '.x(' + value_vec + ');\n'
  code

Blockly.JavaScript['vec_augmenter'] = (block) ->
  value_matr = Blockly.JavaScript.valueToCode(block, 'matr', Blockly.JavaScript.ORDER_ATOMIC)
  value_vec = Blockly.JavaScript.valueToCode(block, 'vec', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_matr + " = " + value_matr + '.add(' + value_vec + ');\n'
  code

Blockly.JavaScript['vec_diminuer'] = (block) ->
  value_matr = Blockly.JavaScript.valueToCode(block, 'matr', Blockly.JavaScript.ORDER_ATOMIC)
  value_vec = Blockly.JavaScript.valueToCode(block, 'vec', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_matr + " = " + value_matr + '.subtract(' + value_vec + ');\n'
  code

Blockly.JavaScript['sofus_scalaire'] = (block) ->
  value_matr = Blockly.JavaScript.valueToCode(block, 'matr', Blockly.JavaScript.ORDER_ATOMIC)
  value_vec = Blockly.JavaScript.valueToCode(block, 'vec', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_matr + " = " + value_matr + '.dot(' + value_vec + ');\n'
  code

Blockly.JavaScript['mat_mult'] = (block) ->
  variable_lui = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('lui'), Blockly.Variables.NAME_TYPE)
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = variable_lui + '.multiply(' + value_autre + ')'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_arrondi'] = (block) ->
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_autre + '.round()'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_trace'] = (block) ->
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_autre + '.trace()'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]

Blockly.JavaScript['mat_transpose'] = (block) ->
  value_autre = Blockly.JavaScript.valueToCode(block, 'autre', Blockly.JavaScript.ORDER_ATOMIC)
  code = value_autre + '.transpose()'
  [
    code
    Blockly.JavaScript.ORDER_NONE
  ]


# fin des vecteurs et matrices


Blockly.JavaScript['repeter_doucement'] = (block) ->
  times = Blockly.JavaScript.valueToCode(block, 'TIMES', Blockly.JavaScript.ORDER_ATOMIC)
  statements = Blockly.JavaScript.statementToCode(block, 'DO')
  code = "for (var i = 0; i < #{times}; i++) { setTimeout(function(){#{statements}}, 1000);$('#graphique').show(100);}\n"

Blockly.JavaScript['lentement'] = (block) ->
  statements = Blockly.JavaScript.statementToCode(block, 'DO')
  code = "turbo = false;\n#{statements}\nturbo = true;\n"
  
Blockly.JavaScript['octet'] = (block) ->
	octet = 0
	if (block.getFieldValue('O7')=='TRUE') then octet += 128
	if (block.getFieldValue('O6')=='TRUE') then octet += 64
	if (block.getFieldValue('O5')=='TRUE') then octet += 32
	if (block.getFieldValue('O4')=='TRUE') then octet += 16
	if (block.getFieldValue('O3')=='TRUE') then octet += 8
	if (block.getFieldValue('O2')=='TRUE') then octet += 4
	if (block.getFieldValue('O1')=='TRUE') then octet += 2
	if (block.getFieldValue('O0')=='TRUE') then octet += 1
	[
		octet
		Blockly.JavaScript.ORDER_NONE
	]
	
Blockly.JavaScript['binaire'] = (block) ->
	n = Blockly.JavaScript.valueToCode(block, 'N', Blockly.JavaScript.ORDER_ATOMIC)
	[
		'Number(('+n+').toString(2))'
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['envers'] = (block) ->
	n = Blockly.JavaScript.valueToCode(block, 'N', Blockly.JavaScript.ORDER_ATOMIC)
	[
		'Number(reverseT(""+'+n+'))'
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['srevne'] = (block) ->
	n = Blockly.JavaScript.valueToCode(block, 'N', Blockly.JavaScript.ORDER_ATOMIC)
	[
		'reverseT(""+'+n+')'
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['kaprekar_doubler'] = (block) ->
	n = Blockly.JavaScript.valueToCode(block, 'N', Blockly.JavaScript.ORDER_ATOMIC)
	[
		'Number(""+'+n+'+'+n+')'
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['cconcatener'] = (block) ->
	a = Blockly.JavaScript.valueToCode(block, 'A', Blockly.JavaScript.ORDER_ATOMIC)
	b = Blockly.JavaScript.valueToCode(block, 'B', Blockly.JavaScript.ORDER_ATOMIC)
	[
		'Number(""+'+a+'+'+b+')'
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['kaprekar_ranger'] = (block) ->
	n = Blockly.JavaScript.valueToCode(block, 'N', Blockly.JavaScript.ORDER_ATOMIC)
	[
		'Number(('+n+').toString().split("").sort().join(""))'
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['remplacer'] = (block) ->
	var_c1 = Blockly.JavaScript.valueToCode(block, 'C1', Blockly.JavaScript.ORDER_ATOMIC)
	var_c2 = Blockly.JavaScript.valueToCode(block, 'C2', Blockly.JavaScript.ORDER_ATOMIC)
	var_t = Blockly.JavaScript.valueToCode(block, 'T', Blockly.JavaScript.ORDER_ATOMIC)
	code = 'var re = new RegExp('+var_c1+',"g");\n'
	code += var_t+' = '+var_t+'.replace(re,'+var_c2+');\n'
	code

Blockly.JavaScript['remplacer1'] = (block) ->
	var_c1 = Blockly.JavaScript.valueToCode(block, 'C1', Blockly.JavaScript.ORDER_ATOMIC)
	var_c2 = Blockly.JavaScript.valueToCode(block, 'C2', Blockly.JavaScript.ORDER_ATOMIC)
	var_t = Blockly.JavaScript.valueToCode(block, 'T', Blockly.JavaScript.ORDER_ATOMIC)
	code = 'var re = new RegExp('+var_c1+');\n'
	code += var_t+' = '+var_t+'.replace(re,'+var_c2+');\n'
	code

Blockly.JavaScript['eval'] = (block) ->
	prog = Blockly.JavaScript.valueToCode(block, 'P', Blockly.JavaScript.ORDER_ATOMIC)
	[
		'eval('+prog+')'
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['eval0'] = (block) ->
	prog = Blockly.JavaScript.valueToCode(block, 'P', Blockly.JavaScript.ORDER_ATOMIC)
	'eval('+prog+');\n'


Blockly.JavaScript['coffee'] = (block) ->
	prog = Blockly.JavaScript.valueToCode(block, 'P', Blockly.JavaScript.ORDER_ATOMIC)
	[
		'CoffeeScript.run('+prog+')'
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['coffee0'] = (block) ->
	prog = Blockly.JavaScript.valueToCode(block, 'P', Blockly.JavaScript.ORDER_ATOMIC)
	'CoffeeScript.run('+prog+');\n'

Blockly.JavaScript['inverser_frac'] = (block) ->
  frac_1 = Blockly.JavaScript.valueToCode(block, 'frac', Blockly.JavaScript.ORDER_ATOMIC)
  code = frac_1 + " = " + frac_1 + '.inverse();\n'
  code

Blockly.JavaScript['augmenter_frac'] = (block) ->
	frac_1 = Blockly.JavaScript.valueToCode(block, 'frac1', Blockly.JavaScript.ORDER_ATOMIC)
	frac_2 = Blockly.JavaScript.valueToCode(block, 'frac2', Blockly.JavaScript.ORDER_ATOMIC)
	frac_1 + ' = ' + frac_1 + '.plus(' + frac_2 + ');\n'

Blockly.JavaScript['diminuer_frac'] = (block) ->
	frac_1 = Blockly.JavaScript.valueToCode(block, 'frac1', Blockly.JavaScript.ORDER_ATOMIC)
	frac_2 = Blockly.JavaScript.valueToCode(block, 'frac2', Blockly.JavaScript.ORDER_ATOMIC)
	frac_1 + ' = ' + frac_1 + '.moins(' + frac_2 + ');\n'

Blockly.JavaScript['multiplier_frac'] = (block) ->
	frac_1 = Blockly.JavaScript.valueToCode(block, 'frac1', Blockly.JavaScript.ORDER_ATOMIC)
	frac_2 = Blockly.JavaScript.valueToCode(block, 'frac2', Blockly.JavaScript.ORDER_ATOMIC)
	frac_1 + ' = ' + frac_1 + '.fois(' + frac_2 + ');\n'

Blockly.JavaScript['diviser_frac'] = (block) ->
	frac_1 = Blockly.JavaScript.valueToCode(block, 'frac1', Blockly.JavaScript.ORDER_ATOMIC)
	frac_2 = Blockly.JavaScript.valueToCode(block, 'frac2', Blockly.JavaScript.ORDER_ATOMIC)
	frac_1 + ' = ' + frac_1 + '.sur(' + frac_2 + ');\n'


Blockly.JavaScript['pgcd'] = (block) ->
	var_a = Blockly.JavaScript.valueToCode(block, 'A', Blockly.JavaScript.ORDER_ATOMIC)
	var_b = Blockly.JavaScript.valueToCode(block, 'B', Blockly.JavaScript.ORDER_ATOMIC)
	code = 'pgcd(' + var_a + ',' + var_b + ')'
	[
		code
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['doubler_frac'] = (block) ->
  varName = Blockly.JavaScript.valueToCode(block, 'VAR', Blockly.JavaScript.ORDER_ATOMIC)
  choix = block.getFieldValue('CHOIX')
  varName + ' = ' + varName + '.fois(new Fraction(' + choix + ',1));\n'

Blockly.JavaScript['doubler_vec'] = (block) ->
  varName = Blockly.JavaScript.valueToCode(block, 'VAR', Blockly.JavaScript.ORDER_ATOMIC)
  choix = block.getFieldValue('CHOIX')
  varName + ' = ' + varName + '.x(' + choix + ');\n'

# micromonde de Smullyan

#Blockly.JavaScript['vampire_doctor'] = (block) ->
#	dropdown_pur = block.getFieldValue('PUR')
#	dropdown_sain = block.getFieldValue('SAIN')
#	dropdown_med = block.getFieldValue('MED')
#	code = ' { "human": ' + dropdown_pur
#	code += ', "sain": ' + dropdown_sain
#	code += ', "docteur": ' + dropdown_med
#	code += ' } '
#	[
#		code
#		Blockly.JavaScript.ORDER_NONE
#	]

Blockly.JavaScript['humain'] = (block) ->
	code = ' { "humain": true, "sain": true, "docteur": false } '
	[
		code
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['vampire'] = (block) ->
	code = ' { "humain": false, "sain": true, "docteur": false } '
	[
		code
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['sain'] = (block) ->
	code = ' { "humain": true, "sain": true, "docteur": false } '
	[
		code
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['fou'] = (block) ->
	code = ' { "humain": true, "sain": false, "docteur": false } '
	[
		code
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['fou'] = (block) ->
	code = ' { "humain": true, "sain": false, "docteur": false } '
	[
		code
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['patient'] = (block) ->
	code = ' { "humain": true, "sain": true, "docteur": false } '
	[
		code
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['docteur'] = (block) ->
	code = ' { "humain": true, "sain": true, "docteur": true } '
	[
		code
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['transyl_etat'] = (block) ->
	variable_name = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('NAME'), Blockly.Variables.NAME_TYPE)
	dropdown_etat = block.getFieldValue('etat')
	code = "var moi = " + variable_name + "; "
	code = dropdown_etat.replace(/moi/,variable_name)
	[
		code
		Blockly.JavaScript.ORDER_NONE
	]


Blockly.JavaScript['devenir'] = (block) ->
	variable_name = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('NAME'), Blockly.Variables.NAME_TYPE)
	dropdown_etat = block.getFieldValue('etat')
	code = variable_name + dropdown_etat + ";\n"
	code

Blockly.JavaScript['dire'] = (block) ->
	variable_name = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('NAME'), Blockly.Variables.NAME_TYPE)
	value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC)
	code = "(" + variable_name + ".humain == " +variable_name + ".sain) == " + value_name
	[
		code
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['croire'] = (block) ->
	variable_name = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('NAME'), Blockly.Variables.NAME_TYPE)
	value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC)
	code = variable_name + ".sain == " + value_name
	[
		code
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['transyl_affectation'] = (block) ->
	dropdown_prop = block.getFieldValue('PROP')
	variable_name = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('NAME'), Blockly.Variables.NAME_TYPE)
	value_name = Blockly.JavaScript.valueToCode(block, 'NAME', Blockly.JavaScript.ORDER_ATOMIC)
	code = variable_name + dropdown_prop + value_name + ";\n"
	code


# calcul formel


Blockly.JavaScript['simplifier'] = (block) ->
	expr = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('EXPR'), Blockly.Variables.NAME_TYPE)
	code = expr + " = " + "CQ(" + expr + ").simplify().toString();\n"
	code

Blockly.JavaScript['developper'] = (block) ->
	expr = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('EXPR'), Blockly.Variables.NAME_TYPE)
	code = expr + " = " + "CQ(" + expr + ").expand().toString();\n"
	code

Blockly.JavaScript['deriver'] = (block) ->
	expr = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('EXPR'), Blockly.Variables.NAME_TYPE)
	code = "var fn = CQ(" + expr + ");\n"
	code += "var vn = fn.getAllVariables()[0];\n"
	code += expr + " = fn.differentiate(vn).toString();\n"
	code

Blockly.JavaScript['solutions'] = (block) ->
	equ = Blockly.JavaScript.valueToCode(block, 'EQU', Blockly.JavaScript.ORDER_ATOMIC)
	code = "CQ(" + equ + ").solve(CQ(" + equ + ").getAllVariables()[0])"
	[
		code
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['embelli'] = (block) ->
	equ = Blockly.JavaScript.valueToCode(block, 'EQU', Blockly.JavaScript.ORDER_ATOMIC)
	code = equ + '.replace(/\\*\\*2/g,"²").replace(/\\*\\*3/g,"³").replace(/\\*/g," ")'
	[
		code
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['CAS_carre'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  dropdown_pow = block.getFieldValue('POW')
  varName + " = CQ('('+" + varName + "+')**" + dropdown_pow + "').simplify().toString();\n"

Blockly.JavaScript['CAS_doubler'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  choix = block.getFieldValue('CHOIX')
  varName + " = CQ('('+" + varName + "+')*" + choix + "').simplify().toString();\n"

Blockly.JavaScript['CAS_puissance'] = (block) ->
  argument0 = Blockly.JavaScript.valueToCode(block, 'POW', Blockly.JavaScript.ORDER_ADDITION) or '0'
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + " = CQ('('+"+ varName + "+')**" + argument0 + "').simplify().toString();\n"

Blockly.JavaScript['CAS_inverser'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + " = CQ('1/('+" + varName + "+')').simplify().toString();\n"

Blockly.JavaScript['CAS_multiplier_fract'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  dropdown_denom = block.getFieldValue('DENOM')
  varName + " = CQ('('+" + varName + "+')*('+" + argument0 + "+')/('+" + dropdown_denom + "+')').simplify().toString();\n"

Blockly.JavaScript['CAS_diviser_fract'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  dropdown_denom = block.getFieldValue('DENOM')
  varName + " = CQ('('+" + varName + "+')*('+" + dropdown_denom + "+')/('+" + argument0 + "+')').simplify().toString();\n"

Blockly.JavaScript['CAS_augmenter_fract'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  dropdown_denom = block.getFieldValue('DENOM')
  varName + " = CQ('('+" + varName + "+')*(1+('+" + argument0 + "+')/'+" + dropdown_denom + "+')').simplify().toString();\n"

Blockly.JavaScript['CAS_diminuer_fract'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  dropdown_denom = block.getFieldValue('DENOM')
  varName + " = CQ('('+" + varName + "+')*(1-('+" + argument0 + "+')/'+" + dropdown_denom + "+')').simplify().toString();\n"

Blockly.JavaScript['CAS_augmenter'] = (block) ->
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + " = CQ('('+" + varName + "+')+('+" + argument0 + "+')').simplify().toString();\n"

Blockly.JavaScript['CAS_diminuer'] = (block) ->
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + " = CQ('('+" + varName + "+')-('+" + argument0 + "+')').simplify().toString();\n"

Blockly.JavaScript['CAS_multiplier'] = (block) ->
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + " = CQ('('+" + varName + "+')*('+" + argument0 + "+')').simplify().toString();\n"

Blockly.JavaScript['CAS_diviser'] = (block) ->
  argument0 = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ADDITION) or '0'
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + " = CQ('('+" + varName + "+')/('+" + argument0 + "+')').simplify().toString();\n"

Blockly.JavaScript['CAS_incrementer'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + " = CQ('('+" + varName + "+')+1').simplify().toString();\n"

Blockly.JavaScript['CAS_decrementer'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  varName + " = CQ('('+" + varName + "+')-1').simplify().toString();\n"

Blockly.JavaScript['texte_doubler'] = (block) ->
  varName = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('VAR'), Blockly.Variables.NAME_TYPE)
  choix = block.getFieldValue('CHOIX')
  code = "var _t = " + varName + "; var _s = ''; for (var _c = 0; _c < " + choix + "; _c++) {_s += _t}; " + varName + " = _s;\n"

Blockly.JavaScript['texte_compter'] = (block) ->
	value_lettre = Blockly.JavaScript.valueToCode(block, 'Lettre', Blockly.JavaScript.ORDER_ATOMIC)
	value_mot = Blockly.JavaScript.valueToCode(block, 'Mot', Blockly.JavaScript.ORDER_ATOMIC)
	code = value_mot+".match(new RegExp("+value_lettre+",'g')).length"
	[
		code
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['lambda_js'] = (block) ->
	value_var = Blockly.JavaScript.valueToCode(block, 'var', Blockly.JavaScript.ORDER_ATOMIC)
	value_fonc = Blockly.JavaScript.valueToCode(block, 'fonc', Blockly.JavaScript.ORDER_ATOMIC)
	code = "function(" + value_var.replace(/\'/g,'') + "){return (" + value_fonc.replace(/\'/g,'') + "); }" 
	[
		code
		Blockly.JavaScript.ORDER_NONE
	]

Blockly.JavaScript['lambda1'] = (block) ->
	value_variables = Blockly.JavaScript.valueToCode(block, 'variables', Blockly.JavaScript.ORDER_ATOMIC)
	variable_fonctions = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('fonctions'), Blockly.Variables.NAME_TYPE)
	code = "function(" + value_variables.replace(/\'/g,'') + "){return (" + variable_fonctions.replace(/\'/g,'') + "); }"
	[
		code
		Blockly.JavaScript.ORDER_NONE
	]


Blockly.JavaScript['nb_txt'] = (block) ->
	nombre = Blockly.JavaScript.valueToCode(block, 'N', Blockly.JavaScript.ORDER_ATOMIC)
	[
		'entexte('+nombre+')'
		Blockly.JavaScript.ORDER_NONE
	]

