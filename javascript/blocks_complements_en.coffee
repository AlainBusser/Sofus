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
              'to the square'
              '2'
            ]
            [
              'to the third power'
              '3'
            ]
            [
              'to the fourth power'
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
        'double'
        '2'
      ]
      [
        'triple'
        '3'
      ]
      [
        'quadruple'
        '4'
      ]
      [
        'quintuple'
        '5'
      ]
      [
        'sextuple'
        '6'
      ]
      [
        'decuple'
        '10'
      ]
      [
        'centuple'
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
      'message0': '%1 to %2 add %3 %4'
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
              'percents'
              '100'
            ]
            [
              'halves'
              '2'
            ]
            [
              'thirds'
              '3'
            ]
            [
              'quarters'
              '4'
            ]
            [
              'fifths'
              '5'
            ]
            [
              'sixths'
              '6'
            ]
            [
              'sevenths'
              '7'
            ]
            [
              'eighths'
              '8'
            ]
            [
              'ninths'
              '9'
            ]
            [
              'tenths'
              '10'
            ]
            [
              'hundredths'
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
      'message0': '%1 to %2 subtract %3 %4'
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
              'percents'
              '100'
            ]
            [
              'halves'
              '2'
            ]
            [
              'thirds'
              '3'
            ]
            [
              'quarters'
              '4'
            ]
            [
              'fifths'
              '5'
            ]
            [
              'sixths'
              '6'
            ]
            [
              'sevenths'
              '7'
            ]
            [
              'eighths'
              '8'
            ]
            [
              'ninths'
              '9'
            ]
            [
              'tenths'
              '10'
            ]
            [
              'hundredths'
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
      'message0': '%1 multiply %2 by %3 %4'
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
              'percents'
              '100'
            ]
            [
              'halves'
              '2'
            ]
            [
              'thirds'
              '3'
            ]
            [
              'quarters'
              '4'
            ]
            [
              'fifths'
              '5'
            ]
            [
              'sixths'
              '6'
            ]
            [
              'sevenths'
              '7'
            ]
            [
              'eighths'
              '8'
            ]
            [
              'ninths'
              '9'
            ]
            [
              'tenths'
              '10'
            ]
            [
              'hundredths'
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
      'message0': '%1 divide %2 by %3 %4'
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
              'percents'
              '100'
            ]
            [
              'halves'
              '2'
            ]
            [
              'thirds'
              '3'
            ]
            [
              'quarters'
              '4'
            ]
            [
              'fifths'
              '5'
            ]
            [
              'sixths'
              '6'
            ]
            [
              'sevenths'
              '7'
            ]
            [
              'eighths'
              '8'
            ]
            [
              'ninths'
              '9'
            ]
            [
              'tenths'
              '10'
            ]
            [
              'hundredths'
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
      'message0': '%1 round %2 to %3 %4'
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
              'decimal places'
              '1e-'
            ]
            [
              ' '
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
      'message0': '%1 truncate %2 to %3 %4'
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
              'decimal places'
              '1e-'
            ]
            [
              ' '
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
  "message0": "round %1 to %2 %3",
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
  @appendValueInput('VAR').appendField(new (Blockly.FieldImage)('img/pencil.png', 32, 32, '')).appendField 'print'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 20
  @setTooltip 'add after the parchment'
  @setHelpUrl ''
  return
Blockly.Blocks['big_efface'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/droplet.png', 32, 32, '')).appendField 'palimpsest'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 20
  @setTooltip 'wash off the parchment'
  @setHelpUrl 'https://en.wikipedia.org/wiki/Palimpsest'
  return
Blockly.Blocks['tortue_x'] = init: ->
  @appendDummyInput().appendField 'abscissa of the turtle'
  @setOutput true, 'Number'
  @setColour 120
  @setTooltip 'abscissa of the turtle'
  @setHelpUrl ''
  return
Blockly.Blocks['tortue_y'] = init: ->
  @appendDummyInput().appendField 'ordinate of the turtle'
  @setOutput true, 'Number'
  @setColour 120
  @setTooltip 'ordinate of the turtle'
  @setHelpUrl ''
  return
Blockly.Blocks['tortue_t'] = init: ->
  @appendDummyInput().appendField 'angle of the turtle'
  @setOutput true, 'Number'
  @setColour 120
  @setTooltip 'angle between the turtle and the X axis'
  @setHelpUrl ''
  return
Blockly.Blocks['tortue_c'] = init: ->
  @appendDummyInput().appendField 'color of the turtle'
  @setOutput true
  @setColour 120
  @setTooltip 'color of the pen'
  @setHelpUrl ''
  return
Blockly.Blocks['avancer'] = init: ->
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/avancer.gif', 32, 32, '')).appendField 'forward by'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'move the turtle forward'
  @setHelpUrl ''
  return
Blockly.Blocks['reculer'] = init: ->
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/reculer.gif', 32, 32, '')).appendField 'backward by'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'let the turtle move backward'
  @setHelpUrl ''
  return
Blockly.Blocks['tortue_gauche'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/gauche.gif', 32, 32, '')).appendField('to the left by').appendField new (Blockly.FieldAngle)(90), 'NAME'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'turn the turtle to its left'
  @setHelpUrl ''
  return
Blockly.Blocks['tortue_droite'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/droite.gif', 32, 32, '')).appendField('to the right by').appendField new (Blockly.FieldAngle)(90), 'NAME'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'turn the turtle to its right'
  @setHelpUrl ''
  return
Blockly.Blocks['var_gauche'] = init: ->
  @appendValueInput('ANGLE').setCheck('Number').appendField(new (Blockly.FieldImage)('img/gauche.gif', 32, 32, '')).appendField 'turn to the left by'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'turn to the right by an angle in degrees'
  @setHelpUrl ''
  return
Blockly.Blocks['var_droite'] = init: ->
  @appendValueInput('ANGLE').setCheck('Number').appendField(new (Blockly.FieldImage)('img/droite.gif', 32, 32, '')).appendField 'turn to the right by'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'turn to the right by an angle in degrees'
  @setHelpUrl ''
  return
Blockly.Blocks['frac_gauche'] = init: ->
  @appendValueInput('NUMER').setCheck('Number').appendField 'to the left, by'
  @appendDummyInput().appendField '/ 6 of a right angle'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'turn to the left from a fraction of a turn'
  @setHelpUrl ''
  return
Blockly.Blocks['frac_droite'] = init: ->
  @appendValueInput('NUMER').setCheck('Number').appendField 'to the right, by'
  @appendDummyInput().appendField '/ 6 of a right angle'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'turn to the right from a fraction of a turn'
  @setHelpUrl ''
  return
Blockly.Blocks['mettre_angle'] = init: ->
  @appendValueInput('ANGLE').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'orient the turtle at'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'impose a direction to the turtle'
  @setHelpUrl ''
  return
Blockly.Blocks['teleport'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField('teleport the turtle to (').appendField(new (Blockly.FieldTextInput)('0'), 'X').appendField(',').appendField(new (Blockly.FieldTextInput)('0'), 'Y').appendField ')'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'teleport without changing angle nor draw a line'
  @setHelpUrl ''
  return
Blockly.Blocks['tortue_teleport'] = init: ->
  @appendValueInput('ABS').setCheck('Number').appendField 'teleport the turtle to ('
  @appendValueInput('ORD').setCheck('Number').appendField ','
  @appendDummyInput().appendField ')'
  @setInputsInline true
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'teleport the turtle'
  @setHelpUrl ''
  return
Blockly.Blocks['tampon'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/pencil.png', 32, 32, '')).appendField 'draw a point'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'the turtle draws a little circle where it is'
  @setHelpUrl ''
  return
Blockly.Blocks['teleport_var'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField('teleport the turtle to (').appendField(new (Blockly.FieldVariable)('x'), 'X').appendField(',').appendField(new (Blockly.FieldVariable)('y'), 'Y').appendField ')'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'place the turtle at a position given by its coordinates'
  @setHelpUrl ''
  return
Blockly.Blocks['cacher_tortue'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/ghost.png', 32, 32, '')).appendField 'hide turtle'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'from now on the turtle is invisible'
  @setHelpUrl ''
  return
Blockly.Blocks['montrer_tortue'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'show turtle'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'from now on the turtle is visible'
  @setHelpUrl ''
  return
Blockly.Blocks['lever_stylo'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/penup.gif', 32, 32, '')).appendField 'pen up'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'from now on the turtle moves without drawing'
  @setHelpUrl ''
  return
Blockly.Blocks['baisser_stylo'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/pendown.gif', 32, 32, '')).appendField 'pen down'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'from now on the turtle will draw'
  @setHelpUrl ''
  return
Blockly.Blocks['scribe'] = init: ->
  @appendValueInput('texte').appendField(new (Blockly.FieldImage)('img/pencil.png', 32, 32, '')).appendField 'write'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'the turtle writes a text where it stands'
  @setHelpUrl ''
  return
Blockly.Blocks['couleur_stylo'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/pencil.png', 32, 32, '')).appendField('pen color:').appendField new (Blockly.FieldColour)('#000066'), 'colstyle'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'change the pen color'
  @setHelpUrl ''
  return
Blockly.Blocks['eff_svg'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/droplet.png', 32, 32, '')).appendField 'erase graphics'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'erase graphics'
  @setHelpUrl ''
  return
Blockly.Blocks['reset'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/droplet.png', 32, 32, '')).appendField 'initialize graphics'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'initialize the turtle graphics (except the colour)'
  @setHelpUrl ''
  return
Blockly.Blocks['axeX'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/axeX.gif', 32, 32, '')).appendField 'X axis'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'draw the X axis'
  @setHelpUrl ''
  return
Blockly.Blocks['axeY'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/axeY.gif', 32, 32, '')).appendField 'Y axis'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'draw Y axis'
  @setHelpUrl ''
  return
Blockly.Blocks['axes'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/axes.gif', 32, 32, '')).appendField 'draw axes'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'draw both axes on the turtle graphics'
  @setHelpUrl ''
  return
Blockly.Blocks['grille'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/grid.gif', 32, 32, '')).appendField 'draw grid'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'square grid'
  @setHelpUrl ''
  return

Blockly.Blocks['creer_tortue'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField('Create turtle #').appendField new (Blockly.FieldTextInput)('1'), 'N'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'Create a turtle'
  @setHelpUrl ''
  return

Blockly.Blocks['creer_tortue_var'] = init: ->
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'Create turtle #'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'Create a turtle (String)'
  @setHelpUrl ''
  return

Blockly.Blocks['choisir_tortue'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField('With the turtle').appendField new (Blockly.FieldTextInput)('1'), 'N'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'Choose a turtle'
  @setHelpUrl ''
  @appendStatementInput('DO').appendField('do')
  return

Blockly.Blocks['choisir_tortue_var'] = init: ->
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'With the turtle #'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'give instruction to a turtle given by its number'
  @setHelpUrl ''
  @appendStatementInput('DO').appendField('do')
  return

Blockly.Blocks['distance_avec_tortue_var'] = init: ->
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'Distance from the turtle #'
  @setOutput true, 'Number'
  @setColour 120
  @setTooltip 'Distance from a turtle given by its number'
  @setHelpUrl ''
  return

Blockly.Blocks['tourner_vers_tortue_var'] = init: ->
  @appendValueInput('NAME').setCheck('Number').appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'Turn towards the turtle #'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'turn towards a turtle given by its number'
  @setHelpUrl ''
  return

Blockly.Blocks['costume_suivant'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'next avatar'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'change the look of the turtle'
  @setHelpUrl ''
  return

Blockly.Blocks['costume_pred'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField 'previous avatar'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'change the look of the turtle'
  @setHelpUrl ''
  return

Blockly.Blocks['costume'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldImage)('img/turtle.png', 32, 32, '')).appendField('choose avatar').appendField(new Blockly.FieldDropdown([["origin", "0"], ["ladybug", "1"], ["left", "2"], ["right", "3"], ["Frenet", "4"], ["metal", "5"], ["classic", "6"]]), "CID")
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'change the look of the turtle'
  @setHelpUrl ''
  return

# vectors and matrices

Blockly.Blocks['vec_const'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField new (Blockly.FieldTextInput)('3'), 'x'
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField new (Blockly.FieldTextInput)('2'), 'y'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip '2D vector'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_3D'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField new (Blockly.FieldTextInput)('3'), 'x'
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField new (Blockly.FieldTextInput)('2'), 'y'
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField new (Blockly.FieldTextInput)('1'), 'z'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip '3D vector'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_alea'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField 'random vector'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'random vector (all coordinates random)'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_alea3'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField 'random vector'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'random vector (all coordinates random)'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_nul'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField 'zero vector'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'zero vector (all coordinates null)'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_nul3'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField 'zero vector'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'zero vector (all coordinates null)'
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
  @setTooltip 'equality between matrices'
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
  @setTooltip 'subtraction'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_dot'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField '.'
  @setOutput true, 'Number'
  @setColour 20
  @setTooltip 'dot product'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_angle'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField 'angle with'
  @setOutput true, 'Number'
  @setColour 20
  @setTooltip ''
  @setHelpUrl 'vector angle (in radians)'
  return
Blockly.Blocks['vec_distance'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField 'distance from'
  @setOutput true, 'Number'
  @setColour 20
  @setTooltip ''
  @setHelpUrl 'distance between vectors (considered as points)'
  return
Blockly.Blocks['vec_abscisse'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField 'abscissa of'
  @setOutput true, 'Number'
  @setColour 20
  @setTooltip 'abscissa of the vector'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_ordonnee'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField 'ordinate of'
  @setOutput true, 'Number'
  @setColour 20
  @setTooltip 'ordinate of the vecteur'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_expr'] = init: ->
  @appendDummyInput().appendField("Vector")
  @appendValueInput("ABS").appendField("x: ")
  @appendValueInput("ORD").appendField("y: ")
  @setInputsInline true
  @setOutput true
  @setColour 20
  @setTooltip 'variable vector'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_expr3D'] = init: ->
  @appendDummyInput().appendField("Vector")
  @appendValueInput("ABS").appendField("x: ")
  @appendValueInput("ORD").appendField("y: ")
  @appendValueInput("COT").appendField("z: ")
  @setInputsInline true
  @setOutput true
  @setColour 20
  @setTooltip 'variable vector'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_cote'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField 'applicate of'
  @setOutput true, 'Number'
  @setColour 20
  @setTooltip 'applicate of the vector'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_colineaire'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField 'is collinear to'
  @setOutput true, 'Boolean'
  @setColour 20
  @setTooltip 'collinearity'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_perpendiculaire'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField 'is perpendicular to'
  @setOutput true, 'Boolean'
  @setColour 20
  @setTooltip 'perpendicularity between vectors'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_fois'] = init: ->
  @appendValueInput('autre').setCheck('Number').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField '×'
  @setOutput true
  @setColour 20
  @setTooltip 'product by a number'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_foisbis'] = init: ->
  @appendValueInput('autre').appendField(new (Blockly.FieldTextInput)('3'), 'facteur').appendField '×'
  @setOutput true
  @setColour 20
  @setTooltip 'product number*matrix'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_symmetry'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField 'symmetric with respect to'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'central symmetry'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_rotation'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField(new (Blockly.FieldVariable)('element'), 'lui').appendField('rotated by').appendField(new (Blockly.FieldTextInput)('3.14'), 'angle').appendField 'radians around'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'rotation fixed angle'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_norme'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField 'length of'
  @setOutput true, 'Number'
  @setColour 20
  @setTooltip 'length'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_unitaire'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField 'normalize'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'unit vector collinear to this vector'
  @setHelpUrl ''
  return
Blockly.Blocks['normer_sofus'] = init: ->
  @appendValueInput('autre').setCheck('Vector').appendField 'normalize'
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 20
  @setTooltip 'scale this vector to unit'
  @setHelpUrl ''
  return
Blockly.Blocks['inverser_mat'] = init: ->
  @appendValueInput('matr').setCheck('Matrix').appendField 'invert'
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 120
  @setTooltip 'invert the matrix'
  @setHelpUrl ''
  return
Blockly.Blocks['transposer_mat'] = init: ->
  @appendValueInput('matr').setCheck('Matrix').appendField 'transpose'
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 120
  @setTooltip 'transpose the matrix'
  @setHelpUrl ''
  return
Blockly.Blocks['arrondir_mat'] = init: ->
  @appendValueInput('matr').setCheck('Matrix').appendField 'round'
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 120
  @setTooltip 'round the coefficients of the matrix'
  @setHelpUrl ''
  return
Blockly.Blocks['mult_sofus_mat'] = init: ->
  @appendValueInput('matr').setCheck('Matrix').appendField 'multiply'
  @appendValueInput('vec').setCheck(null).appendField 'by'
  @setInputsInline true
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 120
  @setTooltip 'multiply the matrix by a matrix'
  @setHelpUrl ''
  return
Blockly.Blocks['mult_gauche'] = init: ->
  @appendValueInput('vec').setCheck(null).appendField 'multiply'
  @appendValueInput('matr').setCheck('Matrix').appendField 'on the left by'
  @setInputsInline true
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 120
  @setTooltip 'multiply the matrix by a matrix'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_multiplier'] = init: ->
  @appendValueInput('matr').setCheck('Vector').appendField 'multiply'
  @appendValueInput('vec').setCheck(null).appendField 'by'
  @setInputsInline true
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 20
  @setTooltip 'multiply the vector'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_augmenter'] = init: ->
  @appendValueInput('matr').setCheck(null).appendField 'augment'
  @appendValueInput('vec').setCheck(null).appendField 'by'
  @setInputsInline true
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 20
  @setTooltip 'add a matrix'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_diminuer'] = init: ->
  @appendValueInput('matr').setCheck(null).appendField 'diminish'
  @appendValueInput('vec').setCheck(null).appendField 'by'
  @setInputsInline true
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 20
  @setTooltip 'subtract a matrix'
  @setHelpUrl ''
  return
Blockly.Blocks['sofus_scalaire'] = init: ->
  @appendValueInput('matr').setCheck('Vector').appendField 'dot multiply'
  @appendValueInput('vec').setCheck('Vector').appendField 'by'
  @setInputsInline true
  @setPreviousStatement(true, null)
  @setNextStatement(true, null)
  @setColour 20
  @setTooltip 'dot product'
  @setHelpUrl ''
  return
Blockly.Blocks['vec_diagonal'] = init: ->
  @appendValueInput('vecteur').setCheck('Vector').appendField 'diagonal'
  @setOutput true, 'Matrix'
  @setColour 20
  @setTooltip 'diagonal matrix'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_matrice'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldTextInput)('3'), 'a11').appendField new (Blockly.FieldTextInput)('-2'), 'a12'
  @appendDummyInput().appendField(new (Blockly.FieldTextInput)('1'), 'a21').appendField new (Blockly.FieldTextInput)('5'), 'a22'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrix 2 by 2'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_3D'] = init: ->
  @appendDummyInput().appendField(new (Blockly.FieldTextInput)('8'), 'a11').appendField(new (Blockly.FieldTextInput)('1'), 'a12').appendField new (Blockly.FieldTextInput)('6'), 'a13'
  @appendDummyInput().appendField(new (Blockly.FieldTextInput)('3'), 'a21').appendField(new (Blockly.FieldTextInput)('5'), 'a22').appendField new (Blockly.FieldTextInput)('7'), 'a23'
  @appendDummyInput().appendField(new (Blockly.FieldTextInput)('4'), 'a31').appendField(new (Blockly.FieldTextInput)('9'), 'a32').appendField new (Blockly.FieldTextInput)('2'), 'a33'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrix 3 by 3'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_col'] = init: ->
  @appendDummyInput().appendField "columns"
  @appendValueInput("C1")
  @appendValueInput("C2")
  @setInputsInline(true)
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrix defined by its columns'
Blockly.Blocks['mat3D_col'] = init: ->
  @appendDummyInput().appendField "columns"
  @appendValueInput("C1")
  @appendValueInput("C2")
  @appendValueInput("C3")
  @setInputsInline(true)
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'matrix by its columns'
Blockly.Blocks['mat_diag'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField(new (Blockly.FieldTextInput)('3'), 'a11').appendField '0'
  @appendDummyInput().appendField('0').appendField new (Blockly.FieldTextInput)('2'), 'a22'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'diagonal matrix'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_id'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField('1').appendField '0'
  @appendDummyInput().appendField('0').appendField '1'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'identity matrix'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_id3'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField('1').appendField('0').appendField '0'
  @appendDummyInput().appendField('0').appendField('1').appendField '0'
  @appendDummyInput().appendField('0').appendField('0').appendField '1'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'identity matrix'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_alea'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField new (Blockly.FieldImage)('img/die.png', 32, 32, 'X')
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'random matrix'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_alea3'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField new (Blockly.FieldImage)('img/die.png', 32, 32, 'X')
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'random matrix'
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
  @setTooltip 'zero matrix'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_rotation'] = init: ->
  @appendDummyInput().setAlign(Blockly.ALIGN_RIGHT).appendField('rotation  of angle').appendField new (Blockly.FieldAngle)(45), 'angle'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'rotation matrix'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_colonne1'] = init: ->
  @appendValueInput('NAME').setCheck('Matrix').appendField 'first column of'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'the first column of a matrix is a vector'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_colonne2'] = init: ->
  @appendValueInput('NAME').setCheck('Matrix').appendField 'second column of'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'the second column of a matrix is a vector'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_colonne3'] = init: ->
  @appendValueInput('NAME').setCheck('Matrix').appendField 'third column of'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'the third column of a matrix is a vector'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_diagonal'] = init: ->
  @appendValueInput('NAME').setCheck('Matrix').appendField 'diagonal of'
  @setOutput true, 'Vector'
  @setColour 20
  @setTooltip 'the diagonal of the matrix is a vector'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_det'] = init: ->
  @appendValueInput('matr').setCheck('Matrix').appendField 'determinant of'
  @setOutput true, 'Number'
  @setColour 120
  @setTooltip 'determinant'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_inv'] = init: ->
  @appendValueInput('matr').setCheck('Matrix').appendField 'inverse of'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'inverse'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_mult'] = init: ->
  @appendValueInput('autre').appendField(new (Blockly.FieldVariable)('matrice'), 'lui').appendField '×'
  @setOutput true
  @setColour 120
  @setTooltip 'product of two matrices or of a matrix by a vector'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_arrondi'] = init: ->
  @appendValueInput('autre').appendField 'rounded of'
  @setOutput true
  @setColour 120
  @setTooltip 'rounded'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_trace'] = init: ->
  @appendValueInput('autre').setCheck('Matrix').appendField 'trace of'
  @setOutput true, 'Number'
  @setColour 120
  @setTooltip 'trace of the matrix'
  @setHelpUrl ''
  return
Blockly.Blocks['mat_transpose'] = init: ->
  @appendValueInput('autre').setCheck('Matrix').appendField 'transposed of'
  @setOutput true, 'Matrix'
  @setColour 120
  @setTooltip 'transpose'
  @setHelpUrl ''
  return



# fin des vecteurs et matrices



Blockly.Blocks['repeter_doucement'] = init: ->
  @appendValueInput('TIMES').setCheck('Number').appendField( 'Repeat slowly' )
  @appendDummyInput().appendField 'times'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'Repeater every 500ms'
  @setHelpUrl ''
  @appendStatementInput('DO').appendField('do')
  return

Blockly.Blocks['lentement'] = init: ->
  @appendDummyInput().appendField 'very slowly'
  @setPreviousStatement true
  @setNextStatement true
  @setColour 120
  @setTooltip 'slow down the turtle(s)'
  @setHelpUrl ''
  @appendStatementInput('DO').appendField('do')
  return


Blockly.Blocks['octet'] = init: ->
	@appendDummyInput().appendField('byte ').appendField(new Blockly.FieldCheckbox("FALSE"), "O7").appendField(new Blockly.FieldCheckbox("FALSE"), "O6").appendField(new Blockly.FieldCheckbox("TRUE"), "O5").appendField(new Blockly.FieldCheckbox("FALSE"), "O4").appendField(new Blockly.FieldCheckbox("TRUE"), "O3").appendField(new Blockly.FieldCheckbox("FALSE"), "O2").appendField(new Blockly.FieldCheckbox("TRUE"), "O1").appendField(new Blockly.FieldCheckbox("FALSE"), "O0")
	@setOutput true, null
	@setColour 75
	@setTooltip 'binary representation of an integer between 0 and 255'
	@setHelpUrl ''
	return

	
Blockly.Blocks['binaire'] = init: ->
	@appendValueInput("N").setCheck(null).appendField("binary")
	@setOutput true, null
	@setColour 75
	@setTooltip 'only 0 and 1 as decimal digits to represent a binary number with decimal notation'
	@setHelpUrl ''
	return

Blockly.Blocks['envers'] = init: ->
	@appendValueInput("N").setCheck(null).appendField("the reverse of")
	@setOutput true, null
	@setColour 75
	@setTooltip 'the reverse of a number, after Smullyan'
	@setHelpUrl ''
	return

Blockly.Blocks['srevne'] = init: ->
	@appendValueInput("N").setCheck(null).appendField("the reverse of")
	@setOutput true, null
	@setColour 160
	@setTooltip 'the reverse of a number, see Smullyan'
	@setHelpUrl ''
	return

Blockly.Blocks['kaprekar_doubler'] = init: ->
	@appendValueInput("N").setCheck(null).appendField("the repeat of")
	@setOutput true, null
	@setColour 75
	@setTooltip 'duplicate the digits'
	@setHelpUrl ''
	return

Blockly.Blocks['cconcatener'] = init: ->
	@appendValueInput("A").setCheck(null).appendField("the concantenate of")
	@appendValueInput("B").setCheck(null).appendField("and")
	@setInputsInline true
	@setOutput true, null
	@setColour 75
	@setTooltip 'concatenate the digits'
	@setHelpUrl ''
	return

Blockly.Blocks['kaprekar_ranger'] = init: ->
	@appendValueInput("N").setCheck(null).appendField("the sorted digits of")
	@setOutput true, null
	@setColour 75
	@setTooltip 'sort the digits in ascending order'
	@setHelpUrl ''
	return

Blockly.Blocks['remplacer'] = init: ->
	@appendDummyInput().appendField("replace all the")
	@appendValueInput("C1").setCheck(null)
	@appendDummyInput().appendField("by")
	@appendValueInput("C2").setCheck(null)
	@appendDummyInput().appendField("in")
	@appendValueInput("T").setCheck(null)
	@setInputsInline true
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(150)
	@setTooltip('substitution')
	@setHelpUrl('')
	return
	
Blockly.Blocks['remplacer1'] = init: ->
	@appendDummyInput().appendField("replace the first")
	@appendValueInput("C1").setCheck(null)
	@appendDummyInput().appendField("by")
	@appendValueInput("C2").setCheck(null)
	@appendDummyInput().appendField("in")
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
	@appendValueInput("P").setCheck(null).appendField new (Blockly.FieldImage)('img/coffee.png', 32, 32, 'X')
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(270)
	@setTooltip('CoffeeScript')
	@setHelpUrl('')
	return

Blockly.Blocks['inverser_frac'] = init: ->
	@appendValueInput('frac').setCheck('Fraction').appendField 'invert'
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(45)
	@setTooltip('invert the fraction')
	@setHelpUrl('')
	return


Blockly.Blocks['augmenter_frac'] = init: ->
	@appendValueInput('frac1').setCheck('Fraction').appendField 'augment'
	@appendValueInput('frac2').setCheck('Fraction').appendField 'by'
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(45)
	@setTooltip 'add a fraction'
	@setHelpUrl('')
	return

Blockly.Blocks['diminuer_frac'] = init: ->
	@appendValueInput('frac1').setCheck('Fraction').appendField 'diminish'
	@appendValueInput('frac2').setCheck('Fraction').appendField 'by'
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(45)
	@setTooltip 'subtract a fraction'
	@setHelpUrl('')
	return

Blockly.Blocks['multiplier_frac'] = init: ->
	@appendValueInput('frac1').setCheck('Fraction').appendField 'multiply'
	@appendValueInput('frac2').setCheck('Fraction').appendField 'by'
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(45)
	@setTooltip 'multiply by a fraction'
	@setHelpUrl('')
	return

Blockly.Blocks['diviser_frac'] = init: ->
	@appendValueInput('frac1').setCheck('Fraction').appendField 'divide'
	@appendValueInput('frac2').setCheck('Fraction').appendField 'by'
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(45)
	@setTooltip 'divide by a fraction'
	@setHelpUrl('')
	return

Blockly.Blocks['pgcd'] = init: ->
	@appendValueInput("A").setCheck(null).appendField("gcd of")
	@appendValueInput("B").setCheck(null).appendField("and")
	@setInputsInline(true)
	@setOutput(true, null)
	@setColour(230)
	@setTooltip('greatest common divisor')
	@setHelpUrl('')
	return

Blockly.Blocks['doubler_frac'] = init: ->
	@appendDummyInput().appendField(new Blockly.FieldDropdown([["double","2"], ["triple","3"], ["quadruple","4"], ["quintuple","5"], ["sextuple","6"], ["octupler","8"], ["decuple","10"], ["centuple","100"]]), "CHOIX")
	@appendValueInput("VAR").setCheck("Fraction")
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(45)
	@setTooltip('multiply the fraction by a whole number entier')
	@setHelpUrl('')
	return

Blockly.Blocks['doubler_vec'] = init: ->
	@appendDummyInput().appendField(new Blockly.FieldDropdown([["double","2"], ["triple","3"], ["quadruple","4"], ["quintuple","5"], ["sextuple","6"], ["octupler","8"], ["decuple","10"], ["centuple","100"]]), "CHOIX")
	@appendValueInput("VAR")
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(30)
	@setTooltip('multiply the matrix by an integer')
	@setHelpUrl('')
	return


# See Smullyan, Dracula tales



Blockly.Blocks['humain'] = init: ->
	@appendDummyInput().appendField("a").appendField(new Blockly.FieldImage('img/man.png', 32, 32, "human"))
	@setOutput(true, null)
	@setColour(330)
	@setTooltip('in Transylvania humans always tell the truth')
	@setHelpUrl('')
	return

Blockly.Blocks['vampire'] = init: ->
	@appendDummyInput().appendField("a").appendField(new Blockly.FieldImage('img/vampire.png', 32, 32, "vampire"))
	@setOutput(true, null)
	@setColour(330)
	@setTooltip('vampires always lie. Always ...')
	@setHelpUrl('')
	return

Blockly.Blocks['sain'] = init: ->
	@appendDummyInput().appendField("a").appendField(new Blockly.FieldImage('img/healthy.png', 32, 32, "healthy"))
	@setOutput(true, null)
	@setColour(330)
	@setTooltip('whatever a healthy transylvanian believes is true')
	@setHelpUrl('')
	return

Blockly.Blocks['fou'] = init: ->
	@appendDummyInput().appendField("a").appendField(new Blockly.FieldImage('img/crazy.png', 32, 32, "mad"))
	@setOutput(true, null)
	@setColour(330)
	@setTooltip('whatever a mad transylvanian believes is false')
	@setHelpUrl('')
	return

Blockly.Blocks['patient'] = init: ->
	@appendDummyInput().appendField("a").appendField(new Blockly.FieldImage('img/sick.png', 32, 32, "patient"))
	@setOutput(true, null)
	@setColour(330)
	@setTooltip('is every patient really mad in this asylum?')
	@setHelpUrl('')
	return

Blockly.Blocks['docteur'] = init: ->
	@appendDummyInput().appendField("a").appendField(new Blockly.FieldImage('img/medical.png', 32, 32, "doctor"))
	@setOutput(true, null)
	@setColour(330)
	@setTooltip('A doctor, but is he mentally healthy?')
	@setHelpUrl('')
	return


Blockly.Blocks['transyl_etat'] = init: ->
	@appendDummyInput().appendField(new Blockly.FieldVariable("transylvanian"), "NAME").appendField("is").appendField(new Blockly.FieldDropdown([["human","moi.humain"], ["vampire","!moi.humain"], ["healthy","moi.sain"], ["mad","!moi.sain"], ["a patient","!moi.docteur"], ["a doctor","moi.docteur"]]), "etat")
	@setInputsInline(true)
	@setOutput(true, "Boolean")
	@setColour(330)
	@setTooltip('the actual state of a transylvanian')
	@setHelpUrl('')
	return

Blockly.Blocks['devenir'] = init: ->
	@appendDummyInput().appendField(new Blockly.FieldVariable("transylvanian"), "NAME").appendField("becomes").appendField(new Blockly.FieldDropdown([["human",".humain = true"], ["vampire",".humain = false"], ["healthy",".sain = true"], ["mad",".sain = false"], ["a patient",".docteur = false"], ["a doctor",".docteur = true"]]), "etat")
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(330)
	@setTooltip('evolution of the transylvanians')
	@setHelpUrl('')
	return

Blockly.Blocks['dire'] =  init: ->
	@appendValueInput("NAME").setCheck("Boolean").appendField(new Blockly.FieldVariable("transylvanian"), "NAME").appendField("says that")
	@setInputsInline(true)
	@setOutput(true, "Boolean")
	@setColour(330)
	@setTooltip('affirmation')
	@setHelpUrl('')
	return

Blockly.Blocks['croire'] =  init: ->
	@appendValueInput("NAME").setCheck("Boolean").appendField(new Blockly.FieldVariable("transylvanian"), "NAME").appendField("believes that")
	@setInputsInline(true)
	@setOutput(true, "Boolean")
	@setColour(330)
	@setTooltip('belief')
	@setHelpUrl('')
	return

Blockly.Blocks['transyl_affectation'] = init: ->
	@appendValueInput("NAME").setCheck("Boolean").appendField("set").appendField(new Blockly.FieldDropdown([["the human nature",".humain = "], ["the mental health",".sain = "], ["the profession",".docteur = "]]), "PROP").appendField("of").appendField(new Blockly.FieldVariable("transylvanian"), "NAME").appendField("to")
	@setInputsInline(true)
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(330)
	@setTooltip('set properties')
	@setHelpUrl('')
	return

# calcul formel


Blockly.Blocks['developper'] = init: ->
	@appendDummyInput().appendField("expand").appendField(new Blockly.FieldVariable("expression"), "EXPR")
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(150)
	@setTooltip('expand an expression')
	@setHelpUrl('')
	return

Blockly.Blocks['simplifier'] = init: ->
	@appendDummyInput().appendField("simplify").appendField(new Blockly.FieldVariable("expression"), "EXPR")
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(150)
	@setTooltip('simplify an expression')
	@setHelpUrl('')
	return

Blockly.Blocks['deriver'] = init: ->
	@appendDummyInput().appendField("differentiate").appendField(new Blockly.FieldVariable("expression"), "EXPR")
	@setPreviousStatement(true, null)
	@setNextStatement(true, null)
	@setColour(150)
	@setTooltip('differentiate an expression with respect to its variable')
	@setHelpUrl('')
	return

Blockly.Blocks['solutions'] = init: ->
	@appendValueInput("EQU").setCheck(null).appendField("solutions of")
	@setOutput(true, null)
	@setColour(150)
	@setTooltip('solve an equation')
	@setHelpUrl('')
	return

Blockly.Blocks['embelli'] = init: ->
	@appendValueInput("EQU").setCheck(null).appendField("prettified of")
	@setOutput(true, null)
	@setColour(150)
	@setTooltip('write better')
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
              'to the square'
              '2'
            ]
            [
              'to the third power'
              '3'
            ]
            [
              'to the fourth power'
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
        'double'
        '2'
      ]
      [
        'triple'
        '3'
      ]
      [
        'quadruple'
        '4'
      ]
      [
        'quintuple'
        '5'
      ]
      [
        'sextuple'
        '6'
      ]
      [
        'decuple'
        '10'
      ]
      [
        'centuple'
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
      'message0': '%1 augment %2 by %3 %4'
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
              'percents'
              '100'
            ]
            [
              'halves'
              '2'
            ]
            [
              'thirds'
              '3'
            ]
            [
              'quarters'
              '4'
            ]
            [
              'fifths'
              '5'
            ]
            [
              'sixths'
              '6'
            ]
            [
              'sevenths'
              '7'
            ]
            [
              'eighths'
              '8'
            ]
            [
              'ninths'
              '9'
            ]
            [
              'tenths'
              '10'
            ]
            [
              'hundredths'
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
      'message0': '%1 dimish %2 by %3 %4'
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
              'percents'
              '100'
            ]
            [
              'halves'
              '2'
            ]
            [
              'thirds'
              '3'
            ]
            [
              'quarters'
              '4'
            ]
            [
              'fifths'
              '5'
            ]
            [
              'sixths'
              '6'
            ]
            [
              'sevenths'
              '7'
            ]
            [
              'eighths'
              '8'
            ]
            [
              'ninths'
              '9'
            ]
            [
              'tenths'
              '10'
            ]
            [
              'hundredths'
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
      'message0': '%1 multiply %2 by %3 %4'
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
              'percents'
              '100'
            ]
            [
              'halves'
              '2'
            ]
            [
              'thirds'
              '3'
            ]
            [
              'quarters'
              '4'
            ]
            [
              'fifths'
              '5'
            ]
            [
              'sixths'
              '6'
            ]
            [
              'sevenths'
              '7'
            ]
            [
              'eighths'
              '8'
            ]
            [
              'ninths'
              '9'
            ]
            [
              'tenths'
              '10'
            ]
            [
              'hundredths'
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
      'message0': '%1 divide %2 by %3 %4'
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
              'percents'
              '100'
            ]
            [
              'halves'
              '2'
            ]
            [
              'thirds'
              '3'
            ]
            [
              'quarters'
              '4'
            ]
            [
              'fifths'
              '5'
            ]
            [
              'sixths'
              '6'
            ]
            [
              'sevenths'
              '7'
            ]
            [
              'eighths'
              '8'
            ]
            [
              'ninths'
              '9'
            ]
            [
              'tenths'
              '10'
            ]
            [
              'hundredths'
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
        'double'
        '2'
      ]
      [
        'triple'
        '3'
      ]
      [
        'quadruple'
        '4'
      ]
      [
        'quintuple'
        '5'
      ]
      [
        'sextuple'
        '6'
      ]
      [
        'decuple'
        '10'
      ]
      [
        'centuple'
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
		@appendValueInput("Lettre").setCheck(null).appendField("number of")
		@appendValueInput("Mot").setCheck(null).appendField("in")
		@setInputsInline(true)
		@setOutput(true, null)
		@setColour(165)
		@setTooltip('count the letters in a word')
		@setHelpUrl('')
		return

Blockly.Blocks['lambda_js'] =
	init: ->
		@appendValueInput("var").setCheck(null)
		@appendValueInput("fonc").setCheck(null).appendField("⟼")
		@setInputsInline(true)
		@setOutput(true, null)
		@setColour(300)
		@setTooltip('anonymus function')
		@setHelpUrl('')
		return

Blockly.Blocks['lambda1'] =
	init: ->
		@appendValueInput("variables").setCheck(null).appendField("λ")
		@appendDummyInput().appendField(".").appendField(new Blockly.FieldVariable("element"), "fonctions")
		@setInputsInline(true)
		@setOutput(true, null)
		@setColour(270)
		@setTooltip('anonymous function')
		@setHelpUrl('')
		return

