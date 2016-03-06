Blockly.Blocks['sophus_angle'] = init: ->
  @jsonInit
    id: 'sophus_degres'
    message0: 'angle %1'
    args0:
      type  : 'field_angle'
      name  : 'angle'
      angle : 90
    output  : null
    tooltip : 'angle en degrés'
    colour  : Blockly.Blocks.math.HUE
    helpUrl : ''
  return
Blockly.Blocks['sophus_carre'] =
  init: ->
    @jsonInit
      'message0': Blockly.Msg.SOPHUS_CARRE_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/puissance.png'
          'width': 64
          'height': 32
          'alt': '[^]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_CARRE_TITLE_ITEM
        }
        {
          'type': 'field_dropdown'
          'name': 'POW'
          'options': [
            [
              'au carré'
              '2'
            ]
            [
              'au cube'
              '3'
            ]
            [
              'à la puissance 4'
              '4'
            ]
          ]
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'colour': Blockly.Blocks.variables.HUE
      'helpUrl': Blockly.Msg.SOPHUS_CARRE_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_CARRE_TOOLTIP.replace '%1', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return
Blockly.Blocks['sophus_doubler'] =
  init: ->
    dropdown = new (Blockly.FieldDropdown)([
      [
        'doubler'
        '2'
      ]
      [
        'tripler'
        '3'
      ]
      [
        'quadrupler'
        '4'
      ]
      [
        'quintupler'
        '5'
      ]
      [
        'sextupler'
        '6'
      ]
      [
        'décupler'
        '10'
      ]
      [
        'centupler'
        '100'
      ]
    ])
    variable = new (Blockly.FieldVariable)(Blockly.Msg.VARIABLES_DEFAULT_NAME)
    @appendDummyInput().appendField(new (Blockly.FieldImage)('./img/multiplier.png', 64, 32, '[*]:   ')).appendField(dropdown, 'CHOIX').appendField('la variable').appendField variable, 'VAR'
    @setHelpUrl ''
    @setPreviousStatement true
    @setNextStatement true
    @setColour Blockly.Blocks.variables.HUE
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return
Blockly.Blocks['sophus_augmenter'] =
  init: ->
    @jsonInit
      'message0': Blockly.Msg.SOPHUS_AUGMENTER_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/augmenter.png'
          'width': 64
          'height': 32
          'alt': '[+]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_AUGMENTER_TITLE_ITEM
        }
        {
          'type': 'input_value'
          'name': 'DELTA'
          'check': 'Number'
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'colour': Blockly.Blocks.variables.HUE
      'helpUrl': Blockly.Msg.SOPHUS_AUGMENTER_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_AUGMENTER_TOOLTIP.replace '%1', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return
Blockly.Blocks['sophus_augmenter_fract'] =
  init: ->
    @jsonInit
      'message0': '%1 augmenter %2 de %3 %4'
      'args0': [
        {
          'type': 'field_image'
          'src': './img/augmenter.png'
          'width': 64
          'height': 32
          'alt': '[+]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_AUGMENTER_FRACT_TITLE_ITEM
        }
        {
          'type': 'input_value'
          'name': 'DELTA'
        }
        {
          'type': 'field_dropdown'
          'name': 'DENOM'
          'options': [
            [
              'pourcents'
              '100'
            ]
            [
              'demis'
              '2'
            ]
            [
              'tiers'
              '3'
            ]
            [
              'quarts'
              '4'
            ]
            [
              'cinquièmes'
              '5'
            ]
            [
              'sixièmes'
              '6'
            ]
            [
              'septièmes'
              '7'
            ]
            [
              'huitièmes'
              '8'
            ]
            [
              'neuvièmes'
              '9'
            ]
            [
              'dixièmes'
              '10'
            ]
            [
              'centièmes'
              '100'
            ]
          ]
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'inputsInline': true
      'colour': Blockly.Blocks.variables.HUE
      'helpUrl': Blockly.Msg.SOPHUS_AUGMENTER_FRACT_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_AUGMENTER_FRACT_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return
Blockly.Blocks['sophus_augmenter_pct'] =
  init: ->
    @jsonInit
      'message0': Blockly.Msg.SOPHUS_AUGMENTER_PCT_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/augmenter.png'
          'width': 64
          'height': 32
          'alt': '[+]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_AUGMENTER_PCT_TITLE_ITEM
        }
        {
          'type': 'input_value'
          'name': 'DELTA'
          'check': 'Number'
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'colour': Blockly.Blocks.math.HUE
      'helpUrl': Blockly.Msg.SOPHUS_AUGMENTER_PCT_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_AUGMENTER_PCT_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return
Blockly.Blocks['sophus_diminuer'] =
  init: ->
    @jsonInit
      'message0': Blockly.Msg.SOPHUS_DIMINUER_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/diminuer.png'
          'width': 64
          'height': 32
          'alt': '[-]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_DIMINUER_TITLE_ITEM
        }
        {
          'type': 'input_value'
          'name': 'DELTA'
          'check': 'Number'
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'colour': Blockly.Blocks.variables.HUE
      'helpUrl': Blockly.Msg.SOPHUS_DIMINUER_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_DIMINUER_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return
Blockly.Blocks['sophus_diminuer_fract'] =
  init: ->
    @jsonInit
      'message0': '%1 diminuer %2 de %3 %4'
      'args0': [
        {
          'type': 'field_image'
          'src': './img/diminuer.png'
          'width': 64
          'height': 32
          'alt': '[-]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_DIMINUER_FRACT_TITLE_ITEM
        }
        {
          'type': 'input_value'
          'name': 'DELTA'
        }
        {
          'type': 'field_dropdown'
          'name': 'DENOM'
          'options': [
            [
              'pourcents'
              '100'
            ]
            [
              'demis'
              '2'
            ]
            [
              'tiers'
              '3'
            ]
            [
              'quarts'
              '4'
            ]
            [
              'cinquièmes'
              '5'
            ]
            [
              'sixièmes'
              '6'
            ]
            [
              'septièmes'
              '7'
            ]
            [
              'huitièmes'
              '8'
            ]
            [
              'neuvièmes'
              '9'
            ]
            [
              'dixièmes'
              '10'
            ]
            [
              'centièmes'
              '100'
            ]
          ]
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'inputsInline': true
      'colour': Blockly.Blocks.variables.HUE
      'helpUrl': Blockly.Msg.SOPHUS_DIMINUER_FRACT_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_DIMINUER_FRACT_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return
Blockly.Blocks['sophus_diminuer_pct'] =
  init: ->
    @jsonInit
      'message0': Blockly.Msg.SOPHUS_DIMINUER_PCT_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/diminuer.png'
          'width': 64
          'height': 32
          'alt': '[-]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_DIMINUER_PCT_TITLE_ITEM
        }
        {
          'type': 'input_value'
          'name': 'DELTA'
          'check': 'Number'
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'colour': Blockly.Blocks.math.HUE
      'helpUrl': Blockly.Msg.SOPHUS_DIMINUER_PCT_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_DIMINUER_PCT_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return
Blockly.Blocks['sophus_multiplier'] =
  init: ->
    @jsonInit
      'message0': Blockly.Msg.SOPHUS_MULTIPLIER_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/multiplier.png'
          'width': 64
          'height': 32
          'alt': '[*]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_MULTIPLIER_TITLE_ITEM
        }
        {
          'type': 'input_value'
          'name': 'DELTA'
          'check': 'Number'
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'colour': Blockly.Blocks.variables.HUE
      'helpUrl': Blockly.Msg.SOPHUS_MULTIPLIER_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_MULTIPLIER_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return
Blockly.Blocks['sophus_diviser'] =
  init: ->
    @jsonInit
      'message0': Blockly.Msg.SOPHUS_DIVISER_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/diviser.png'
          'width': 64
          'height': 32
          'alt': '[/]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_DIVISER_TITLE_ITEM
        }
        {
          'type': 'input_value'
          'name': 'DELTA'
          'check': 'Number'
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'colour': Blockly.Blocks.variables.HUE
      'helpUrl': Blockly.Msg.SOPHUS_MULTIPLIER_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_MULTIPLIER_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return
Blockly.Blocks['sophus_multiplier_fract'] =
  init: ->
    @jsonInit
      'message0': '%1 multiplier %2 par %3 %4'
      'args0': [
        {
          'type': 'field_image'
          'src': './img/multiplier.png'
          'width': 64
          'height': 32
          'alt': '[*]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_MULTIPLIER_FRACT_TITLE_ITEM
        }
        {
          'type': 'input_value'
          'name': 'DELTA'
        }
        {
          'type': 'field_dropdown'
          'name': 'DENOM'
          'options': [
            [
              'pourcents'
              '100'
            ]
            [
              'demis'
              '2'
            ]
            [
              'tiers'
              '3'
            ]
            [
              'quarts'
              '4'
            ]
            [
              'cinquièmes'
              '5'
            ]
            [
              'sixièmes'
              '6'
            ]
            [
              'septièmes'
              '7'
            ]
            [
              'huitièmes'
              '8'
            ]
            [
              'neuvièmes'
              '9'
            ]
            [
              'dixièmes'
              '10'
            ]
            [
              'centièmes'
              '100'
            ]
          ]
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'inputsInline': true
      'colour': Blockly.Blocks.variables.HUE
      'helpUrl': Blockly.Msg.SOPHUS_MULTIPLIER_FRACT_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_MULTIPLIER_FRACT_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return
Blockly.Blocks['sophus_diviser_fract'] =
  init: ->
    @jsonInit
      'message0': '%1 diviser %2 par %3 %4'
      'args0': [
        {
          'type': 'field_image'
          'src': './img/diviser.png'
          'width': 64
          'height': 32
          'alt': '[/]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_DIVISER_FRACT_TITLE_ITEM
        }
        {
          'type': 'input_value'
          'name': 'DELTA'
        }
        {
          'type': 'field_dropdown'
          'name': 'DENOM'
          'options': [
            [
              'pourcents'
              '100'
            ]
            [
              'demis'
              '2'
            ]
            [
              'tiers'
              '3'
            ]
            [
              'quarts'
              '4'
            ]
            [
              'cinquièmes'
              '5'
            ]
            [
              'sixièmes'
              '6'
            ]
            [
              'septièmes'
              '7'
            ]
            [
              'huitièmes'
              '8'
            ]
            [
              'neuvièmes'
              '9'
            ]
            [
              'dixièmes'
              '10'
            ]
            [
              'centièmes'
              '100'
            ]
          ]
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'inputsInline': true
      'colour': Blockly.Blocks.variables.HUE
      'helpUrl': Blockly.Msg.SOPHUS_DIVISER_FRACT_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_DIVISER_FRACT_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return
Blockly.Blocks['sophus_arrondir'] =
  init: ->
    @jsonInit
      'message0': '%1 arrondir %2 à %3 %4'
      'args0': [
        {
          'type': 'field_image'
          'src': './img/arrondi.png'
          'width': 64
          'height': 32
          'alt': '[O]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_ARRONDIR_TITLE_ITEM
        }
        {
          'type': 'input_value'
          'name': 'DELTA'
        }
        {
          'type': 'field_dropdown'
          'name': 'GRAD'
          'options': [
            [
              'décimales'
              '1e-'
            ]
            [
              'près'
              ''
            ]
          ]
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'inputsInline': true
      'colour': Blockly.Blocks.variables.HUE
      'helpUrl': Blockly.Msg.SOPHUS_ARRONDIR_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_ARRONDIR_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return
Blockly.Blocks['sophus_tronquer'] =
  init: ->
    @jsonInit
      'message0': '%1 tronquer %2 à %3 %4'
      'args0': [
        {
          'type': 'field_image'
          'src': './img/troncature.png'
          'width': 64
          'height': 32
          'alt': '[o]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_TRONQUER_TITLE_ITEM
        }
        {
          'type': 'input_value'
          'name': 'DELTA'
        }
        {
          'type': 'field_dropdown'
          'name': 'GRAD'
          'options': [
            [
              'décimales'
              '1e-'
            ]
            [
              'près'
              ''
            ]
          ]
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'inputsInline': true
      'colour': Blockly.Blocks.variables.HUE
      'helpUrl': Blockly.Msg.SOPHUS_TRONQUER_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_TRONQUER_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return

###

Blockly.Blocks['sophus_arrondi'] = {
  init: function() {
    this.jsonInit({
  "message0": "arrondi de %1 à %2 %3",
  "args0": [
        {
          "type": "field_variable",
          "name": "VAR",
          "variable": Blockly.Msg.SOPHUS_ARRONDI_TITLE_ITEM
        },
    {
      "type": "field_dropdown",
      "name": "GRAD",
      "options": [
        [
          "décimales",
          "1e-"
        ],
        [
          "près",
          ""
        ]
      ]
    }
  ],
  "inputsInline": true,
  "output": "Number",
      "colour": Blockly.Blocks.math.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_ARRONDI_HELPURL
});
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_ARRONDI_TOOLTIP.replace('%1',
          thisBlock.getFieldValue('VAR'));
    });
  },
  getVars: function() {
    return [this.getFieldValue('VAR')];
  },
  renameVar: function(oldName, newName) {
    if (Blockly.Names.equals(oldName, this.getFieldValue('VAR'))) {
      this.setFieldValue(newName, 'VAR');
    }
  }
};

###

Blockly.Blocks['sophus_puissance'] =
  init: ->
    @jsonInit
      'message0': Blockly.Msg.SOPHUS_PUISSANCE_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/puissance.png'
          'width': 64
          'height': 32
          'alt': '[^]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_PUISSANCE_TITLE_ITEM
        }
        {
          'type': 'input_value'
          'name': 'POW'
          'check': 'Number'
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'colour': Blockly.Blocks.variables.HUE
      'helpUrl': Blockly.Msg.SOPHUS_PUISSANCE_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_PUISSANCE_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return
Blockly.Blocks['sophus_inverser'] =
  init: ->
    @jsonInit
      'id': 'sophus_inverser'
      'message0': Blockly.Msg.SOPHUS_INVERSER_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/inverse.png'
          'width': 64
          'height': 32
          'alt': '[un]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_INVERSER_TITLE_ITEM
        }
      ]
      'inputsInline': true
      'previousStatement': null
      'nextStatement': null
      'colour': Blockly.Blocks.variables.HUE
      'helpUrl': Blockly.Msg.SOPHUS_INVERSER_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_INVERSER_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return
Blockly.Blocks['big_aff'] = init: ->
  @appendValueInput('VAR').appendField 'ajouter en bas'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 20
  @setTooltip 'afficher en bas de page'
  @setHelpUrl ''
  return
Blockly.Blocks['big_efface'] = init: ->
  @appendDummyInput().appendField 'palimpseste'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 20
  @setTooltip 'effacer la sortie'
  @setHelpUrl 'https://fr.wikipedia.org/wiki/Palimpseste'
  return
Blockly.Blocks['tortue_x'] = init: ->
  @appendDummyInput().appendField 'abscisse de la tortue'
  @setOutput true, 'Number'
  @setColour 120
  @setTooltip 'abscisse actuelle de la tortue'
  @setHelpUrl ''
  return
Blockly.Blocks['tortue_y'] = init: ->
  @appendDummyInput().appendField 'ordonnée de la tortue'
  @setOutput true, 'Number'
  @setColour 120
  @setTooltip 'ordonnée actuelle de la tortue'
  @setHelpUrl ''
  return
Blockly.Blocks['tortue_t'] = init: ->
  @appendDummyInput().appendField 'angle de la tortue'
  @setOutput true, 'Number'
  @setColour 120
  @setTooltip 'angle que fait la tortue avec l\'horizontale'
  @setHelpUrl ''
  return
Blockly.Blocks['tortue_c'] = init: ->
  @appendDummyInput().appendField 'couleur de la tortue'
  @setOutput true
  @setColour 120
  @setTooltip 'couleur du stylo'
  @setHelpUrl ''
  return
Blockly.Blocks['avancer'] = init: ->
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'avancer de'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'avancer la tortue'
  @setHelpUrl ''
  return
Blockly.Blocks['reculer'] = init: ->
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'reculer de'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'reculer la tortue'
  @setHelpUrl ''
  return
Blockly.Blocks['tortue_gauche'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField('vers la gauche de').appendField new (Blockly.FieldAngle)(90), 'NAME'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'tourner la tortue vers la gauche'
  @setHelpUrl ''
  return
Blockly.Blocks['tortue_droite'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField('vers la droite de').appendField new (Blockly.FieldAngle)(90), 'NAME'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'tourner la tortue vers la droite'
  @setHelpUrl ''
  return
Blockly.Blocks['var_gauche'] = init: ->
  @appendValueInput('ANGLE').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'tourner à gauche de'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'tourner à gauche d\'un angle en degrés'
  @setHelpUrl ''
  return
Blockly.Blocks['var_droite'] = init: ->
  @appendValueInput('ANGLE').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'tourner à droite de'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'tourner à droite d\'un angle en degrés'
  @setHelpUrl ''
  return
Blockly.Blocks['mettre_angle'] = init: ->
  @appendValueInput('ANGLE').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'orienter la tortue de'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'imposer une direction à la tortue'
  @setHelpUrl ''
  return
Blockly.Blocks['teleport'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField('téléporter la tortue en (').appendField(new (Blockly.FieldTextInput)('0'), 'X').appendField(',').appendField(new (Blockly.FieldTextInput)('0'), 'Y').appendField ')'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'téléporter sans changer l\'angle ni faire de tracé'
  @setHelpUrl ''
  return
Blockly.Blocks['tampon'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/pencil.png', 32, 32, '')).appendField 'marquer un point'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'marquer un cercle à l\'emplacement de la tortue'
  @setHelpUrl ''
  return
Blockly.Blocks['teleport_var'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField('téléporter la tortue en (').appendField(new (Blockly.FieldVariable)('x'), 'X').appendField(',').appendField(new (Blockly.FieldVariable)('y'), 'Y').appendField ')'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'déplacer la tortue vers des coordonnées variables'
  @setHelpUrl ''
  return
Blockly.Blocks['lever_stylo'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/pencil.png', 32, 32, '')).appendField 'lever le stylo'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'dorénavant la tortue ne laisse plus de trace'
  @setHelpUrl ''
  return
Blockly.Blocks['baisser_stylo'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/pencil.png', 32, 32, '')).appendField 'baisser le stylo'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'dorénavant la tortue laisse des traces'
  @setHelpUrl ''
  return
Blockly.Blocks['scribe'] = init: ->
  @appendValueInput('texte').appendField(new (Blockly.FieldImage)('img/pencil.png', 32, 32, '')).appendField 'tamponner'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'la tortue écrit un texte là où elle est'
  @setHelpUrl ''
  return
Blockly.Blocks['couleur_stylo'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/pencil.png', 32, 32, '')).appendField('toner du stylo à').appendField new (Blockly.FieldColour)('#000066'), 'colstyle'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'changer la couleur du stylo'
  @setHelpUrl ''
  return
Blockly.Blocks['eff_svg'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/droplet.png', 32, 32, '')).appendField 'gommer le graphisme tortue'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'vider le graphique de la tortue'
  @setHelpUrl ''
  return
Blockly.Blocks['reset'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/droplet.png', 32, 32, '')).appendField 'initialiser le graphisme tortue'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'initialiser le graphique de la tortue (sauf la couleur)'
  @setHelpUrl ''
  return
Blockly.Blocks['axeX'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/pencil.png', 32, 32, '')).appendField 'axe des abscisses'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'dessiner l\'axe des abscisses'
  @setHelpUrl ''
  return
Blockly.Blocks['axeY'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/pencil.png', 32, 32, '')).appendField 'axe des ordonnées'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'dessiner l\'axe des ordonnées'
  @setHelpUrl ''
  return
Blockly.Blocks['axes'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/pencil.png', 32, 32, '')).appendField 'dessiner le repère'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'dessin des deux axes sur le graphique tortue'
  @setHelpUrl ''
  return
Blockly.Blocks['grille'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/pencil.png', 32, 32, '')).appendField 'dessiner une grille'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'grille orthonormée'
  @setHelpUrl ''
  return

Blockly.Blocks['creer_tortue'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField('Creer la tortue #').appendField new (Blockly.FieldTextInput)('1'), 'N'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'Creer une tortue'
  @setHelpUrl ''
  return

Blockly.Blocks['creer_tortue_var'] = init: ->
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'Créer Tortue #'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'Créer une tortue (String)'
  @setHelpUrl ''
  return

Blockly.Blocks['choisir_tortue'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField('Avec la tortue').appendField new (Blockly.FieldTextInput)('1'), 'N'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'Choisir une tortue'
  @setHelpUrl ''
  return

Blockly.Blocks['choisir_tortue_var'] = init: ->
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'Avec la Tortue #'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'Avec la tortue (Number)'
  @setHelpUrl ''
  return

Blockly.Blocks['distance_avec_tortue_var'] = init: ->
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'Distance avec la Tortue #'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'Distance avec la tortue (Number)'
  @setHelpUrl ''
  return
