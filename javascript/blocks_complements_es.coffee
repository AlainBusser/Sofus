Blockly.Blocks['sophus_angle'] = init: ->
  @appendDummyInput().appendField new (Blockly.FieldAngle)(90), 'NAME'
  @setOutput true, null
  @setColour 330
  @setTooltip 'angle en degrés'
  @setHelpUrl ''
  return

Blockly.Blocks['sophus_carre'] =
  init: ->
    @jsonInit
      'message0': Blockly.Msg.SOPHUS_CARRE_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/puissance.gif'
          'width': 32
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
    @appendDummyInput().appendField(new (Blockly.FieldImage)('./img/multiplier.gif', 64, 32, '[*]:   ')).appendField(dropdown, 'CHOIX').appendField('').appendField variable, 'VAR'
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
          'src': './img/augmenter.gif'
          'width': 32
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
          'src': './img/augmenter.gif'
          'width': 32
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
          'src': './img/augmenter.gif'
          'width': 32
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
          'src': './img/diminuer.gif'
          'width': 32
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
          'src': './img/diminuer.gif'
          'width': 32
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
          'src': './img/diminuer.gif'
          'width': 32
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
          'src': './img/multiplier.gif'
          'width': 32
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
          'src': './img/diviser.gif'
          'width': 32
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
          'src': './img/multiplier.gif'
          'width': 32
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
          'src': './img/diviser.gif'
          'width': 32
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
          'src': './img/arrondir.gif'
          'width': 32
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
          'src': './img/troncature.gif'
          'width': 32
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
          'src': './img/puissance.gif'
          'width': 32
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
          'src': './img/inverse.gif'
          'width': 32
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

Blockly.Blocks['sophus_incrementer'] =
  init: ->
    @jsonInit
      'id': 'sophus_incrementer'
      'message0': Blockly.Msg.SOPHUS_INCREMENTER_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/augmenter.gif'
          'width': 32
          'height': 32
          'alt': '[un]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_INCREMENTER_TITLE_ITEM
        }
      ]
      'inputsInline': true
      'previousStatement': null
      'nextStatement': null
      'colour': Blockly.Blocks.variables.HUE
      'helpUrl': Blockly.Msg.SOPHUS_INCREMENTER_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_INCREMENTER_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return


Blockly.Blocks['sophus_decrementer'] =
  init: ->
    @jsonInit
      'id': 'sophus_decrementer'
      'message0': Blockly.Msg.SOPHUS_DECREMENTER_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/diminuer.gif'
          'width': 32
          'height': 32
          'alt': '[un]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_DECREMENTER_TITLE_ITEM
        }
      ]
      'inputsInline': true
      'previousStatement': null
      'nextStatement': null
      'colour': Blockly.Blocks.variables.HUE
      'helpUrl': Blockly.Msg.SOPHUS_DECREMENTER_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_DECREMENTER_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return





Blockly.Blocks['big_aff'] = init: ->
  @appendValueInput('VAR').appendField(new (Blockly.FieldImage)('img/pencil.gif', 32, 32, '')).appendField 'ajouter en bas'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 20
  @setTooltip 'afficher en bas de page'
  @setHelpUrl ''
  return
Blockly.Blocks['big_efface'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/droplet.gif', 32, 32, '')).appendField 'palimpseste'
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
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/avancer.gif', 32, 32, '')).appendField 'avancer de'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'avancer la tortue'
  @setHelpUrl ''
  return
Blockly.Blocks['reculer'] = init: ->
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/reculer.gif', 32, 32, '')).appendField 'reculer de'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'reculer la tortue'
  @setHelpUrl ''
  return
Blockly.Blocks['tortue_gauche'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/gauche.gif', 32, 32, '')).appendField('vers la gauche de').appendField new (Blockly.FieldAngle)(90), 'NAME'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'tourner la tortue vers la gauche'
  @setHelpUrl ''
  return
Blockly.Blocks['tortue_droite'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/droite.gif', 32, 32, '')).appendField('vers la droite de').appendField new (Blockly.FieldAngle)(90), 'NAME'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'tourner la tortue vers la droite'
  @setHelpUrl ''
  return
Blockly.Blocks['var_gauche'] = init: ->
  @appendValueInput('ANGLE').setCheck('Number').appendField(new (Blockly.FieldImage)('img/gauche.gif', 32, 32, '')).appendField 'tourner à gauche de'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'tourner à gauche d\'un angle en degrés'
  @setHelpUrl ''
  return
Blockly.Blocks['var_droite'] = init: ->
  @appendValueInput('ANGLE').setCheck('Number').appendField(new (Blockly.FieldImage)('img/droite.gif', 32, 32, '')).appendField 'tourner à droite de'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'tourner à droite d\'un angle en degrés'
  @setHelpUrl ''
  return
Blockly.Blocks['frac_gauche'] = init: ->
  @appendValueInput('NUMER').setCheck('Number').appendField 'à gauche de'
  @appendDummyInput().appendField '/ 6 d\'angle droit'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'tourner à gauche d\'un cran'
  @setHelpUrl ''
  return
Blockly.Blocks['frac_droite'] = init: ->
  @appendValueInput('NUMER').setCheck('Number').appendField 'à droite de'
  @appendDummyInput().appendField '/ 6 d\'angle droit'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'tourner à droite d\'un cran'
  @setHelpUrl ''
  return
Blockly.Blocks['mettre_angle'] = init: ->
  @appendValueInput('ANGLE').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.gif', 32, 32, '')).appendField 'orienter la tortue de'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'imposer une direction à la tortue'
  @setHelpUrl ''
  return
Blockly.Blocks['teleport'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.gif', 32, 32, '')).appendField('téléporter la tortue en (').appendField(new (Blockly.FieldTextInput)('0'), 'X').appendField(',').appendField(new (Blockly.FieldTextInput)('0'), 'Y').appendField ')'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'téléporter sans changer l\'angle ni faire de tracé'
  @setHelpUrl ''
  return
Blockly.Blocks['tortue_teleport'] = init: ->
  @appendValueInput('ABS').setCheck('Number').appendField 'téléporter la tortue vers ('
  @appendValueInput('ORD').setCheck('Number').appendField ','
  @appendDummyInput().appendField ')'
  @setInputsInline true
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'téléporter la tortue'
  @setHelpUrl ''
  return
Blockly.Blocks['tampon'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/pencil.gif', 32, 32, '')).appendField 'marquer un point'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'marquer un cercle à l\'emplacement de la tortue'
  @setHelpUrl ''
  return
Blockly.Blocks['teleport_var'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.gif', 32, 32, '')).appendField('téléporter la tortue en (').appendField(new (Blockly.FieldVariable)('x'), 'X').appendField(',').appendField(new (Blockly.FieldVariable)('y'), 'Y').appendField ')'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'déplacer la tortue vers des coordonnées variables'
  @setHelpUrl ''
  return
Blockly.Blocks['cacher_tortue'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/ghost.gif', 32, 32, '')).appendField 'cacher la tortue'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'dorénavant la tortue est invisible'
  @setHelpUrl ''
  return
Blockly.Blocks['montrer_tortue'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.gif', 32, 32, '')).appendField 'montrer la tortue'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'dorénavant la tortue est visible'
  @setHelpUrl ''
  return
Blockly.Blocks['lever_stylo'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/penup.gif', 32, 32, '')).appendField 'lever le stylo'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'dorénavant la tortue ne laisse plus de trace'
  @setHelpUrl ''
  return
Blockly.Blocks['baisser_stylo'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/pendown.gif', 32, 32, '')).appendField 'baisser le stylo'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'dorénavant la tortue laisse des traces'
  @setHelpUrl ''
  return
Blockly.Blocks['scribe'] = init: ->
  @appendValueInput('texte').appendField(new (Blockly.FieldImage)('img/pencil.gif', 32, 32, '')).appendField 'tamponner'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'la tortue écrit un texte là où elle est'
  @setHelpUrl ''
  return
Blockly.Blocks['couleur_stylo'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/pencil.gif', 32, 32, '')).appendField('toner du stylo à').appendField new (Blockly.FieldColour)('#000066'), 'colstyle'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'changer la couleur du stylo'
  @setHelpUrl ''
  return
Blockly.Blocks['eff_svg'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/droplet.gif', 32, 32, '')).appendField 'gommer le graphisme tortue'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'vider le graphique de la tortue'
  @setHelpUrl ''
  return
Blockly.Blocks['reset'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/droplet.gif', 32, 32, '')).appendField 'initialiser le graphisme tortue'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'initialiser le graphique de la tortue (sauf la couleur)'
  @setHelpUrl ''
  return
Blockly.Blocks['axeX'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/axeX.gif', 32, 32, '')).appendField 'axe des abscisses'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'dessiner l\'axe des abscisses'
  @setHelpUrl ''
  return
Blockly.Blocks['axeY'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/axeY.gif', 32, 32, '')).appendField 'axe des ordonnées'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'dessiner l\'axe des ordonnées'
  @setHelpUrl ''
  return
Blockly.Blocks['axes'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/axes.gif', 32, 32, '')).appendField 'dessiner le repère'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'dessin des deux axes sur le graphique tortue'
  @setHelpUrl ''
  return
Blockly.Blocks['grille'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/grid.gif', 32, 32, '')).appendField 'dessiner une grille'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'grille orthonormée'
  @setHelpUrl ''
  return

Blockly.Blocks['creer_tortue'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.gif', 32, 32, '')).appendField('Creer la tortue #').appendField new (Blockly.FieldTextInput)('1'), 'N'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'Creer une tortue'
  @setHelpUrl ''
  return

Blockly.Blocks['creer_tortue_var'] = init: ->
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.gif', 32, 32, '')).appendField 'Créer Tortue #'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'Créer une tortue (String)'
  @setHelpUrl ''
  return

Blockly.Blocks['choisir_tortue'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.gif', 32, 32, '')).appendField('Avec la tortue').appendField new (Blockly.FieldTextInput)('1'), 'N'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'Choisir une tortue'
  @setHelpUrl ''
  @appendStatementInput('DO').appendField('faire')
  return

Blockly.Blocks['choisir_tortue_var'] = init: ->
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.gif', 32, 32, '')).appendField 'Avec la Tortue #'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'Avec la tortue (Number)'
  @setHelpUrl ''
  @appendStatementInput('DO').appendField('faire')
  return

Blockly.Blocks['distance_avec_tortue_var'] = init: ->
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.gif', 32, 32, '')).appendField 'Distance avec la Tortue #'
  @setOutput true, 'Number'
  @setColour 120
  @setTooltip 'Distance avec la tortue (Number)'
  @setHelpUrl ''
  return

Blockly.Blocks['tourner_vers_tortue_var'] = init: ->
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.gif', 32, 32, '')).appendField 'Tourner vers la Tortue #'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'Se tourner vers la tortue (Number)'
  @setHelpUrl ''
  return

Blockly.Blocks['costume_suivant'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'avatar suivant'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'changer l\'aspect de la tortue'
  @setHelpUrl ''
  return

Blockly.Blocks['costume_pred'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'avatar précédent'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'changer l\'aspect de la tortue'
  @setHelpUrl ''
  return

Blockly.Blocks['costume'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField('choisir l\'avatar').appendField(new Blockly.FieldDropdown([["origine", "0"], ["gauche", "1"], ["droit", "2"], ["Frenet", "3"], ["métal", "4"], ["classique", "5"]]), "CID")
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'changer l\'aspect de la tortue'
  @setHelpUrl ''
  return

# vecteurs et matrices

Blockly.Blocks['vec_const'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField new (Blockly.FieldTextInput)('3'), 'x'
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField new (Blockly.FieldTextInput)('2'), 'y'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'vecteur 2D'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_3D'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField new (Blockly.FieldTextInput)('3'), 'x'
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField new (Blockly.FieldTextInput)('2'), 'y'
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField new (Blockly.FieldTextInput)('1'), 'z'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'vecteur 3D'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_alea'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField 'vecteur aléatoire'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'vecteur aléatoire'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_alea3'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField 'vecteur aléatoire'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'vecteur aléatoire'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_nul'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField 'vecteur nul'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'vecteur nul'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_nul3'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField 'vecteur nul'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'vecteur nul'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_aff'] = init: ->
  @appendValueInput('vec').appendField new (Blockly.FieldImage)('img/arrowhead.png', 32, 32, '')
  @setOutput true
  @setColour 20
  @setTooltip 'visibilité des matrices'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_eq'] = init: ->
  @appendValueInput('autre').setCheck([
    'Vector'
    'Matrix'
  ]).appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField '='
  @setOutput true, 'Boolean'
  @setColour 20
  @setTooltip 'égalité de matrices'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_add'] = init: ->
  @appendValueInput('autre').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField '+'
  @setOutput true
  @setColour 20
  @setTooltip 'addition'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_sub'] = init: ->
  @appendValueInput('autre').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField '-'
  @setOutput true
  @setColour 20
  @setTooltip 'soustraction'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_dot'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField '.'
  @setOutput true, 'Number'
  @setColour 20
  @setTooltip 'produit scalaire'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_angle'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField 'angle avec'
  @setOutput true, 'Number'
  @setColour 20
  @setTooltip ''
  @setHelpUrl 'angle de vecteurs (en radians)'
  return
Blockly.Blocks['vec_distance'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField 'distance jusque'
  @setOutput true, 'Number'
  @setColour 20
  @setTooltip ''
  @setHelpUrl 'distance entre vecteurs (considérés comme des points)'
  return
Blockly.Blocks['vec_abscisse'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField 'abscisse de'
  @setOutput true, 'Number'
  @setColour 20
  @setTooltip 'abscisse du vecteur'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_ordonnee'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField 'ordonnée de'
  @setOutput true, 'Number'
  @setColour 20
  @setTooltip 'ordonnée du vecteur'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_expr'] = init: ->
  @appendDummyInput().appendField("Vecteur")
  @appendValueInput("ABS").appendField("x: ")
  @appendValueInput("ORD").appendField("y: ")
  @setInputsInline true
  @setOutput true
  @setColour 20
  @setTooltip 'vecteur variable'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_expr3D'] = init: ->
  @appendDummyInput().appendField("Vecteur")
  @appendValueInput("ABS").appendField("x: ")
  @appendValueInput("ORD").appendField("y: ")
  @appendValueInput("COT").appendField("z: ")
  @setInputsInline true
  @setOutput true
  @setColour 20
  @setTooltip 'vecteur variable'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_cote'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField 'cote de'
  @setOutput true, 'Number'
  @setColour 20
  @setTooltip 'cote du vecteur'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_colineaire'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField 'est colinéaire à'
  @setOutput true, 'Boolean'
  @setColour 20
  @setTooltip 'test de colinéarité (parallélisme ou alignement)'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_perpendiculaire'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField 'est perpendiculaire à'
  @setOutput true, 'Boolean'
  @setColour 20
  @setTooltip 'perpendicularité entre vecteurs'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_fois'] = init: ->
  @appendValueInput('autre').setCheck('Number').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField '×'
  @setOutput true
  @setColour 20
  @setTooltip 'produit par un nombre'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_foisbis'] = init: ->
  @appendValueInput('autre').appendField(new (Blockly.FieldTextInput)('3'), 'facteur').appendField '×'
  @setOutput true
  @setColour 20
  @setTooltip 'produit nombre*matrice'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_symmetry'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField 'symétrique par rapport à'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'symétrie centrale'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_rotation'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField('tourné de').appendField(new (Blockly.FieldTextInput)('3.14'), 'angle').appendField 'radians autour de'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'rotation angle fixe'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_norme'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField 'norme de'
  @setOutput true, 'Number'
  @setColour 20
  @setTooltip 'norme (ou longueur)'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_unitaire'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField 'normer'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'vecteur de norme 1 colinéaire à ce vecteur'
  @setHelpUrl ''
  return
Blockly.Blocks['normer_sofus'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField 'normer'
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 20
  @setTooltip 'donner à ce vecteur une norme unité'
  @setHelpUrl ''
  return
Blockly.Blocks['inverser_mat'] = init: ->
  @appendValueInput('matr').setCheck('Matrix').appendField 'inverser'
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 120
  @setTooltip 'inverser la matrice'
  @setHelpUrl ''
  return
Blockly.Blocks['transposer_mat'] = init: ->
  @appendValueInput('matr').setCheck('Matrix').appendField 'transposer'
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 120
  @setTooltip 'transposer la matrice'
  @setHelpUrl ''
  return
Blockly.Blocks['arrondir_mat'] = init: ->
  @appendValueInput('matr').setCheck('Matrix').appendField 'arrondir'
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 120
  @setTooltip 'arrondir les coefficients de la matrice'
  @setHelpUrl ''
  return
Blockly.Blocks['mult_sofus_mat'] = init: ->
  @appendValueInput('matr').setCheck('Matrix').appendField 'multiplier'
  @appendValueInput('vec').setCheck(null).appendField 'par'
  @setInputsInline true
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 120
  @setTooltip 'multiplier la matrice par une matrice'
  @setHelpUrl ''
  return
Blockly.Blocks['mult_gauche'] = init: ->
  @appendValueInput('vec').setCheck(null).appendField 'multiplier'
  @appendValueInput('matr').setCheck('Matrix').appendField 'à gauche par'
  @setInputsInline true
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 120
  @setTooltip 'multiplier la matrice par une matrice'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_multiplier'] = init: ->
  @appendValueInput('matr').setCheck('Vector').appendField 'multiplier'
  @appendValueInput('vec').setCheck(null).appendField 'par'
  @setInputsInline true
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 20
  @setTooltip 'multiplier le vecteur'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_augmenter'] = init: ->
  @appendValueInput('matr').setCheck(null).appendField 'augmenter'
  @appendValueInput('vec').setCheck(null).appendField 'de'
  @setInputsInline true
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 20
  @setTooltip 'additionner une matrice'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_diminuer'] = init: ->
  @appendValueInput('matr').setCheck(null).appendField 'diminuer'
  @appendValueInput('vec').setCheck(null).appendField 'de'
  @setInputsInline true
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 20
  @setTooltip 'soustraire une matrice'
  @setHelpUrl ''
  return
Blockly.Blocks['sofus_scalaire'] = init: ->
  @appendValueInput('matr').setCheck('Vector').appendField 'multiplier'
  @appendValueInput('vec').setCheck('Vector').appendField 'scalairement par'
  @setInputsInline true
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 20
  @setTooltip 'multiplier scalairement par un vecteur'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_diagonal'] = init: ->
  @appendValueInput('vecteur').setCheck('Vector').appendField 'diagonale'
  @setOutput true, 'Matrix'
  @setColour 20
  @setTooltip 'matrice diagonale'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_matrice'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldTextInput)('3'), 'a11').appendField new (Blockly.FieldTextInput)('-2'), 'a12'
  @appendDummyInput().appendField(new (Blockly.FieldTextInput)('1'), 'a21').appendField new (Blockly.FieldTextInput)('5'), 'a22'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrice 2 par 2'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_3D'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldTextInput)('8'), 'a11').appendField(new (Blockly.FieldTextInput)('1'), 'a12').appendField new (Blockly.FieldTextInput)('6'), 'a13'
  @appendDummyInput().appendField(new (Blockly.FieldTextInput)('3'), 'a21').appendField(new (Blockly.FieldTextInput)('5'), 'a22').appendField new (Blockly.FieldTextInput)('7'), 'a23'
  @appendDummyInput().appendField(new (Blockly.FieldTextInput)('4'), 'a31').appendField(new (Blockly.FieldTextInput)('9'), 'a32').appendField new (Blockly.FieldTextInput)('2'), 'a33'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrice 3 par 3'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_col'] = init: ->
  @appendDummyInput().appendField "colonnes"
  @appendValueInput("C1")
  @appendValueInput("C2")
  @setInputsInline(true)
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrice par ses colonnes'
Blockly.Blocks['mat3D_col'] = init: ->
  @appendDummyInput().appendField "colonnes"
  @appendValueInput("C1")
  @appendValueInput("C2")
  @appendValueInput("C3")
  @setInputsInline(true)
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrice par ses colonnes'
Blockly.Blocks['mat_diag'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField(new (Blockly.FieldTextInput)('3'), 'a11').appendField '0'
  @appendDummyInput().appendField('0').appendField new (Blockly.FieldTextInput)('2'), 'a22'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrice diagonale'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_id'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField('1').appendField '0'
  @appendDummyInput().appendField('0').appendField '1'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrice identité'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_id3'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField('1').appendField('0').appendField '0'
  @appendDummyInput().appendField('0').appendField('1').appendField '0'
  @appendDummyInput().appendField('0').appendField('0').appendField '1'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrice identité'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_alea'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField new (Blockly.FieldImage)('img/die.gif', 32, 32, 'X')
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrice aléatoire'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_alea3'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField new (Blockly.FieldImage)('img/die.gif', 32, 32, 'X')
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrice aléatoire'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_nulle'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField('0').appendField '0'
  @appendDummyInput().appendField('0').appendField '0'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrice nulle'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_nulle3'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField('0').appendField('0').appendField '0'
  @appendDummyInput().appendField('0').appendField('0').appendField '0'
  @appendDummyInput().appendField('0').appendField('0').appendField '0'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrice nulle'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_rotation'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField('rotation d\'angle').appendField new (Blockly.FieldAngle)(45), 'angle'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrice de rotation'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_colonne1'] = init: ->
  @appendValueInput('NAME').setCheck('Matrix').appendField 'première colonne de'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'la première colonne de la matrice est un vecteur'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_colonne2'] = init: ->
  @appendValueInput('NAME').setCheck('Matrix').appendField 'deuxième colonne de'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'la deuxième colonne de la matrice est un vecteur'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_colonne3'] = init: ->
  @appendValueInput('NAME').setCheck('Matrix').appendField 'troisième colonne de'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'la troisième colonne de la matrice est un vecteur'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_diagonal'] = init: ->
  @appendValueInput('NAME').setCheck('Matrix').appendField 'diagonale de'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'la diagonale de la matrice est un vecteur'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_det'] = init: ->
  @appendValueInput('matr').setCheck('Matrix').appendField 'déterminant de'
  @setOutput true, 'Number'
  @setColour 120
  @setTooltip 'déterminant'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_inv'] = init: ->
  @appendValueInput('matr').setCheck('Matrix').appendField 'inverse de'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrice inverse'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_mult'] = init: ->
  @appendValueInput('autre').appendField(new (Blockly.FieldVariable)('matrice'), 'lui').appendField '×'
  @setOutput true
  @setColour 120
  @setTooltip 'produit de matrices (ou de matrice et vecteur)'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_arrondi'] = init: ->
  @appendValueInput('autre').appendField 'arrondi de'
  @setOutput true
  @setColour 120
  @setTooltip 'arrondi'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_trace'] = init: ->
  @appendValueInput('autre').setCheck('Matrix').appendField 'trace de'
  @setOutput true, 'Number'
  @setColour 120
  @setTooltip 'trace de la matrice' 
  @setHelpUrl ''
  return
Blockly.Blocks['mat_transpose'] = init: ->
  @appendValueInput('autre').setCheck('Matrix').appendField 'transposée de'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'transposition matricielle'
  @setHelpUrl ''
  return



# fin des vecteurs et matrices



Blockly.Blocks['repeter_doucement'] = init: ->
  @appendValueInput('TIMES').setCheck('Number').appendField( 'Repeter doucement' )
  @appendDummyInput().appendField 'fois'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'Repeter toutes les 500ms'
  @setHelpUrl ''
  @appendStatementInput('DO').appendField('faire')
  return

Blockly.Blocks['lentement'] = init: ->
  @appendDummyInput().appendField 'Très lentement'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'Ralentir la tortue (risqué)'
  @setHelpUrl ''
  @appendStatementInput('DO').appendField('faire')
  return


Blockly.Blocks['octet'] = init: ->
	@appendDummyInput().appendField('octet ').appendField(new Blockly.FieldCheckbox("FALSE"), "O7").appendField(new Blockly.FieldCheckbox("FALSE"), "O6").appendField(new Blockly.FieldCheckbox("TRUE"), "O5").appendField(new Blockly.FieldCheckbox("FALSE"), "O4").appendField(new Blockly.FieldCheckbox("TRUE"), "O3").appendField(new Blockly.FieldCheckbox("FALSE"), "O2").appendField(new Blockly.FieldCheckbox("TRUE"), "O1").appendField(new Blockly.FieldCheckbox("FALSE"), "O0")
	@setOutput true, null
	@setColour 75
	@setTooltip 'représentation binaire d\'un entier'
	@setHelpUrl ''
	return

	
Blockly.Blocks['binaire'] = init: ->
	@appendValueInput("N").setCheck(null).appendField("binaire")
	@setOutput true, null
	@setColour 75
	@setTooltip 'conversion en binaire représenté en décimal'
	@setHelpUrl ''
	return

Blockly.Blocks['envers'] = init: ->
	@appendValueInput("N").setCheck(null).appendField("retourné de")
	@setOutput true, null
	@setColour 75
	@setTooltip 'mettre les chiffres à l\'envers'
	@setHelpUrl ''
	return

Blockly.Blocks['srevne'] = init: ->
	@appendValueInput("N").setCheck(null).appendField("retourné de")
	@setOutput true, null
	@setColour 160
	@setTooltip 'mettre les lettres à l\'envers'
	@setHelpUrl ''
	return

Blockly.Blocks['kaprekar_doubler'] = init: ->
	@appendValueInput("N").setCheck(null).appendField("répété de")
	@setOutput true, null
	@setColour 75
	@setTooltip 'dupliquer les chiffres'
	@setHelpUrl ''
	return

Blockly.Blocks['cconcatener'] = init: ->
	@appendValueInput("A").setCheck(null).appendField("le concaténé de")
	@appendValueInput("B").setCheck(null).appendField("et")
	@setInputsInline true
	@setOutput true, null
	@setColour 75
	@setTooltip 'concaténer les chiffres'
	@setHelpUrl ''
	return

Blockly.Blocks['kaprekar_ranger'] = init: ->
	@appendValueInput("N").setCheck(null).appendField("les chiffres triés de")
	@setOutput true, null
	@setColour 75
	@setTooltip 'ranger les chiffres dans l\'ordre croissant'
	@setHelpUrl ''
	return

Blockly.Blocks['remplacer'] = init: ->
	@appendDummyInput().appendField("remplacer les")
	@appendValueInput("C1").setCheck(null)
	@appendDummyInput().appendField("par des")
	@appendValueInput("C2").setCheck(null)
	@appendDummyInput().appendField("dans")
	@appendValueInput("T").setCheck(null)
	@setInputsInline true
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(150)
	@setTooltip('substitution')
	@setHelpUrl('')
	return
	
Blockly.Blocks['remplacer1'] = init: ->
	@appendDummyInput().appendField("remplacer le premier")
	@appendValueInput("C1").setCheck(null)
	@appendDummyInput().appendField("par")
	@appendValueInput("C2").setCheck(null)
	@appendDummyInput().appendField("dans")
	@appendValueInput("T").setCheck(null)
	@setInputsInline true
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(150)
	@setTooltip('substitution')
	@setHelpUrl('')
	return
	
Blockly.Blocks['eval'] = init: ->
	@appendValueInput("P").setCheck(null).appendField("JS")
	@setInputsInline(true)
	@setOutput(true, null)
	@setColour(270)
	@setTooltip('JavaScript')
	@setHelpUrl('')
	return

Blockly.Blocks['eval0'] = init: ->
	@appendValueInput("P").setCheck(null).appendField("JS")
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(270)
	@setTooltip('JavaScript')
	@setHelpUrl('')
	return

Blockly.Blocks['coffee'] = init: ->
	@appendValueInput("P").setCheck(null).appendField("CS")
	@setInputsInline(true)
	@setOutput(true, null)
	@setColour(270)
	@setTooltip('CoffeeScript')
	@setHelpUrl('')
	return

Blockly.Blocks['coffee0'] = init: ->
	@appendValueInput("P").setCheck(null).appendField new (Blockly.FieldImage)('img/coffee.gif', 32, 32, 'X')
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(270)
	@setTooltip('CoffeeScript')
	@setHelpUrl('')
	return

Blockly.Blocks['inverser_frac'] = init: ->
	@appendValueInput('frac').setCheck('Fraction').appendField 'inverser'
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(45)
	@setTooltip('inverser la fraction')
	@setHelpUrl('')
	return


Blockly.Blocks['augmenter_frac'] = init: ->
	@appendValueInput('frac1').setCheck('Fraction').appendField 'augmenter'
	@appendValueInput('frac2').setCheck('Fraction').appendField 'de'
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(45)
	@setTooltip 'additionner une fraction'
	@setHelpUrl('')
	return

Blockly.Blocks['diminuer_frac'] = init: ->
	@appendValueInput('frac1').setCheck('Fraction').appendField 'diminuer'
	@appendValueInput('frac2').setCheck('Fraction').appendField 'de'
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(45)
	@setTooltip 'soustraire une fraction'
	@setHelpUrl('')
	return

Blockly.Blocks['multiplier_frac'] = init: ->
	@appendValueInput('frac1').setCheck('Fraction').appendField 'multiplier'
	@appendValueInput('frac2').setCheck('Fraction').appendField 'par'
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(45)
	@setTooltip 'multiplier par une fraction'
	@setHelpUrl('')
	return

Blockly.Blocks['diviser_frac'] = init: ->
	@appendValueInput('frac1').setCheck('Fraction').appendField 'diviser'
	@appendValueInput('frac2').setCheck('Fraction').appendField 'par'
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(45)
	@setTooltip 'diviser par une fraction'
	@setHelpUrl('')
	return

Blockly.Blocks['pgcd'] = init: ->
	@appendValueInput("A").setCheck(null).appendField("pgcd de")
	@appendValueInput("B").setCheck(null).appendField("et")
	@setInputsInline(true)
	@setOutput(true, null)
	@setColour(230)
	@setTooltip('plus grand diviseur commun')
	@setHelpUrl('')
	return

Blockly.Blocks['doubler_frac'] = init: ->
	@appendDummyInput().appendField(new Blockly.FieldDropdown([["doubler","2"], ["tripler","3"], ["quadrupler","4"], ["quintupler","5"], ["sextupler","6"], ["octupler","8"], ["décupler","10"], ["centupler","100"]]), "CHOIX")
	@appendValueInput("VAR").setCheck("Fraction")
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(45)
	@setTooltip('multiplier la fraction par un entier')
	@setHelpUrl('')
	return

Blockly.Blocks['doubler_vec'] = init: ->
	@appendDummyInput().appendField(new Blockly.FieldDropdown([["doubler","2"], ["tripler","3"], ["quadrupler","4"], ["quintupler","5"], ["sextupler","6"], ["octupler","8"], ["décupler","10"], ["centupler","100"]]), "CHOIX")
	@appendValueInput("VAR")
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(30)
	@setTooltip('multiplier la matrice par un entier')
	@setHelpUrl('')
	return


# Micromonde de Smullyan

#Blockly.Blocks['vampire_doctor'] = init: ->
#	@appendDummyInput().appendField("transylvanien").appendField(new Blockly.FieldDropdown([[{"src":"../Sophus/img/man.png","width":32,"height":32,"alt":"homme"},true], [{"src":"../Sophus/img/vampire.png","width":32,"height":32,"alt":"vampire"},false]]), "PUR")
#	@appendField(new Blockly.FieldDropdown([[{"src":"../img/healthy.png","width":32,"height":32,"alt":"sain d'esprit"},true], [{"src":"../img/crazy.png","width":32,"height":32,"alt":"fou"},false]]), "SAIN")
#	@appendField(new Blockly.FieldDropdown([[{"src":"../img/medical.png","width":32,"height":32,"alt":"médecin"},true], [{"src":"../img/sick.png","width":32,"height":32,"alt":"patient"},false]]), "MED")
#	@setOutput(true, null)
#	@setColour(330)
#	@setTooltip('avec statut social')
#	@setHelpUrl('')
#	return


Blockly.Blocks['humain'] = init: ->
	@appendDummyInput().appendField("un").appendField(new Blockly.FieldImage('img/man.png', 32, 32, "humain"))
	@setOutput(true, null)
	@setColour(330)
	@setTooltip('les humains disent toujours la vérité')
	@setHelpUrl('')
	return

Blockly.Blocks['vampire'] = init: ->
	@appendDummyInput().appendField("un").appendField(new Blockly.FieldImage('img/vampire.png', 32, 32, "vampire"))
	@setOutput(true, null)
	@setColour(330)
	@setTooltip('les vampires mentent toujours')
	@setHelpUrl('')
	return

Blockly.Blocks['sain'] = init: ->
	@appendDummyInput().appendField("un").appendField(new Blockly.FieldImage('img/healthy.png', 32, 32, "sain d'esprit"))
	@setOutput(true, null)
	@setColour(330)
	@setTooltip('les sains d\'esprit ne croient qu\'en des choses vraies')
	@setHelpUrl('')
	return

Blockly.Blocks['fou'] = init: ->
	@appendDummyInput().appendField("un").appendField(new Blockly.FieldImage('img/crazy.png', 32, 32, "fou"))
	@setOutput(true, null)
	@setColour(330)
	@setTooltip('les fous ne croient qu\'en des choses fausses')
	@setHelpUrl('')
	return

Blockly.Blocks['patient'] = init: ->
	@appendDummyInput().appendField("un").appendField(new Blockly.FieldImage('img/sick.png', 32, 32, "patient"))
	@setOutput(true, null)
	@setColour(330)
	@setTooltip('celui qui est soigné, mais est-il vraiment malade ?')
	@setHelpUrl('')
	return

Blockly.Blocks['docteur'] = init: ->
	@appendDummyInput().appendField("un").appendField(new Blockly.FieldImage('img/medical.png', 32, 32, "docteur"))
	@setOutput(true, null)
	@setColour(330)
	@setTooltip('Un médecin, est-il sain d\'esprit ou est-il fou ?')
	@setHelpUrl('')
	return


Blockly.Blocks['transyl_etat'] = init: ->
	@appendDummyInput().appendField(new Blockly.FieldVariable("transylvanien"), "NAME").appendField("est").appendField(new Blockly.FieldDropdown([["humain","moi.humain"], ["vampire","!moi.humain"], ["sain d'esprit","moi.sain"], ["fou","!moi.sain"], ["un patient","!moi.docteur"], ["un médecin","moi.docteur"]]), "etat")
	@setInputsInline(true)
	@setOutput(true, "Boolean")
	@setColour(330)
	@setTooltip('l\'état dans lequel se trouve un transylvanien')
	@setHelpUrl('')
	return

Blockly.Blocks['devenir'] = init: ->
	@appendDummyInput().appendField(new Blockly.FieldVariable("transylvanien"), "NAME").appendField("devient").appendField(new Blockly.FieldDropdown([["humain",".humain = true"], ["vampire",".humain = false"], ["sain d'esprit",".sain = true"], ["fou",".sain = false"], ["un patient",".docteur = false"], ["un médecin",".docteur = true"]]), "etat")
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(330)
	@setTooltip('évolution des transylvaniens')
	@setHelpUrl('')
	return

Blockly.Blocks['dire'] =  init: ->
	@appendValueInput("NAME").setCheck("Boolean").appendField(new Blockly.FieldVariable("transylvanien"), "NAME").appendField("dit que")
	@setInputsInline(true)
	@setOutput(true, "Boolean")
	@setColour(330)
	@setTooltip('affirmation')
	@setHelpUrl('')
	return

Blockly.Blocks['croire'] =  init: ->
	@appendValueInput("NAME").setCheck("Boolean").appendField(new Blockly.FieldVariable("transylvanien"), "NAME").appendField("croit que")
	@setInputsInline(true)
	@setOutput(true, "Boolean")
	@setColour(330)
	@setTooltip('croyance')
	@setHelpUrl('')
	return

Blockly.Blocks['transyl_affectation'] = init: ->
	@appendValueInput("NAME").setCheck("Boolean").appendField("positionner").appendField(new Blockly.FieldDropdown([["l'humanité",".humain = "], ["la santé mentale",".sain = "], ["la médicalité",".docteur = "]]), "PROP").appendField("de").appendField(new Blockly.FieldVariable("transylvanien"), "NAME").appendField("à")
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(330)
	@setTooltip('imposer des propriétés')
	@setHelpUrl('')
	return

# calcul formel


Blockly.Blocks['developper'] = init: ->
	@appendDummyInput().appendField("développer").appendField(new Blockly.FieldVariable("expression"), "EXPR")
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(150)
	@setTooltip('développer une expression')
	@setHelpUrl('')
	return

Blockly.Blocks['simplifier'] = init: ->
	@appendDummyInput().appendField("simplifier").appendField(new Blockly.FieldVariable("expression"), "EXPR")
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(150)
	@setTooltip('simplifier une expression')
	@setHelpUrl('')
	return

Blockly.Blocks['deriver'] = init: ->
	@appendDummyInput().appendField("dériver").appendField(new Blockly.FieldVariable("expression"), "EXPR")
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(150)
	@setTooltip('dériver une expression par rapport à sa variable')
	@setHelpUrl('')
	return

Blockly.Blocks['solutions'] = init: ->
	@appendValueInput("EQU").setCheck(null).appendField("solutions de")
	@setOutput(true, null)
	@setColour(150)
	@setTooltip('résoudre une équation')
	@setHelpUrl('')
	return

Blockly.Blocks['embelli'] = init: ->
	@appendValueInput("EQU").setCheck(null).appendField("embelli de")
	@setOutput(true, null)
	@setColour(150)
	@setTooltip('écrire mieux')
	@setHelpUrl('')
	return


Blockly.Blocks['CAS_carre'] =
  init: ->
    @jsonInit
      'message0': Blockly.Msg.SOPHUS_CARRE_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/puissance.gif'
          'width': 32
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
      'colour': 165
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
Blockly.Blocks['CAS_doubler'] =
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
    @appendDummyInput().appendField(new (Blockly.FieldImage)('./img/multiplier.gif', 64, 32, '[*]:   ')).appendField(dropdown, 'CHOIX').appendField('').appendField variable, 'VAR'
    @setHelpUrl ''
    @setPreviousStatement true
    @setNextStatement true
    @setColour 165
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return

Blockly.Blocks['CAS_puissance'] =
  init: ->
    @jsonInit
      'message0': Blockly.Msg.SOPHUS_PUISSANCE_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/puissance.gif'
          'width': 32
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
      'colour': 165
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
Blockly.Blocks['CAS_inverser'] =
  init: ->
    @jsonInit
      'id': 'sophus_inverser'
      'message0': Blockly.Msg.SOPHUS_INVERSER_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/inverse.gif'
          'width': 32
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
      'colour': 165
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

Blockly.Blocks['CAS_augmenter_fract'] =
  init: ->
    @jsonInit
      'message0': '%1 augmenter %2 de %3 %4'
      'args0': [
        {
          'type': 'field_image'
          'src': './img/augmenter.gif'
          'width': 32
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
      'colour': 165
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


Blockly.Blocks['CAS_diminuer_fract'] =
  init: ->
    @jsonInit
      'message0': '%1 diminuer %2 de %3 %4'
      'args0': [
        {
          'type': 'field_image'
          'src': './img/diminuer.gif'
          'width': 32
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
      'colour': 165
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


Blockly.Blocks['CAS_multiplier_fract'] =
  init: ->
    @jsonInit
      'message0': '%1 multiplier %2 par %3 %4'
      'args0': [
        {
          'type': 'field_image'
          'src': './img/multiplier.gif'
          'width': 32
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
      'colour': 165
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
Blockly.Blocks['CAS_diviser_fract'] =
  init: ->
    @jsonInit
      'message0': '%1 diviser %2 par %3 %4'
      'args0': [
        {
          'type': 'field_image'
          'src': './img/diviser.gif'
          'width': 32
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
      'colour': 165
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


Blockly.Blocks['CAS_augmenter'] =
  init: ->
    @jsonInit
      'message0': Blockly.Msg.SOPHUS_AUGMENTER_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/augmenter.gif'
          'width': 32
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
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'colour': 165
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


Blockly.Blocks['CAS_diminuer'] =
  init: ->
    @jsonInit
      'message0': Blockly.Msg.SOPHUS_DIMINUER_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/diminuer.gif'
          'width': 32
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
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'colour': 165
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


Blockly.Blocks['CAS_multiplier'] =
  init: ->
    @jsonInit
      'message0': Blockly.Msg.SOPHUS_MULTIPLIER_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/multiplier.gif'
          'width': 32
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
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'colour': 165
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
Blockly.Blocks['CAS_diviser'] =
  init: ->
    @jsonInit
      'message0': Blockly.Msg.SOPHUS_DIVISER_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/diviser.gif'
          'width': 32
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
        }
      ]
      'previousStatement': null
      'nextStatement': null
      'colour': 165
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


Blockly.Blocks['CAS_incrementer'] =
  init: ->
    @jsonInit
      'id': 'CAS_incrementer'
      'message0': Blockly.Msg.SOPHUS_INCREMENTER_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/augmenter.gif'
          'width': 32
          'height': 32
          'alt': '[un]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_INCREMENTER_TITLE_ITEM
        }
      ]
      'inputsInline': true
      'previousStatement': null
      'nextStatement': null
      'colour': 165
      'helpUrl': Blockly.Msg.SOPHUS_INCREMENTER_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_INCREMENTER_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return


Blockly.Blocks['CAS_decrementer'] =
  init: ->
    @jsonInit
      'id': 'CAS_decrementer'
      'message0': Blockly.Msg.SOPHUS_DECREMENTER_TITLE
      'args0': [
        {
          'type': 'field_image'
          'src': './img/diminuer.gif'
          'width': 32
          'height': 32
          'alt': '[un]:   '
        }
        {
          'type': 'field_variable'
          'name': 'VAR'
          'variable': Blockly.Msg.SOPHUS_DECREMENTER_TITLE_ITEM
        }
      ]
      'inputsInline': true
      'previousStatement': null
      'nextStatement': null
      'colour': 165
      'helpUrl': Blockly.Msg.SOPHUS_DECREMENTER_HELPURL
    thisBlock = this
    @setTooltip ->
      Blockly.Msg.SOPHUS_DECREMENTER_TOOLTIP.replace '%2', thisBlock.getFieldValue('VAR')
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return


Blockly.Blocks['texte_doubler'] =
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
    @appendDummyInput().appendField(new (Blockly.FieldImage)('./img/multiplier.gif', 64, 32, '[*]:   ')).appendField(dropdown, 'CHOIX').appendField('le texte').appendField variable, 'VAR'
    @setHelpUrl ''
    @setPreviousStatement true
    @setNextStatement true
    @setColour 165
    return
  getVars: ->
    [ @getFieldValue('VAR') ]
  renameVar: (oldName, newName) ->
    if Blockly.Names.equals(oldName, @getFieldValue('VAR'))
      @setFieldValue newName, 'VAR'
    return


Blockly.Blocks['texte_compter'] =
	init: ->
		@appendValueInput("Lettre").setCheck(null).appendField("nombre de")
		@appendValueInput("Mot").setCheck(null).appendField("dans")
		@setInputsInline(true)
		@setOutput(true, null)
		@setColour(165)
		@setTooltip('compter des lettres dans un mot')
		@setHelpUrl('')
		return

Blockly.Blocks['lambda_js'] =
	init: ->
		@appendValueInput("var").setCheck(null)
		@appendValueInput("fonc").setCheck(null).appendField("⟼")
		@setInputsInline(true)
		@setOutput(true, null)
		@setColour(300)
		@setTooltip('fonction anonyme')
		@setHelpUrl('')
		return
