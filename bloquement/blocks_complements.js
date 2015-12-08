Blockly.Blocks['sophus_angle'] = {
  init: function() {
      this.jsonInit({
  "id": "sophus_degres",
  "message0": "angle %1",
  "args0": [
    {
      "type": "field_angle",
      "name": "angle",
      "angle": 90
    }
  ],
    "output": null,
  "tooltip": "angle en degrés",
    "colour": Blockly.Blocks.math.HUE,
  "helpUrl": ""
    });
}
};

Blockly.Blocks['sophus_carre'] = {
  init: function() {
    this.jsonInit({
      "message0": Blockly.Msg.SOPHUS_CARRE_TITLE,
      "args0": [
        {
          "type": "field_variable",
          "name": "VAR",
          "variable": Blockly.Msg.SOPHUS_CARRE_TITLE_ITEM
        },
    {
      "type": "field_dropdown",
      "name": "POW",
      "options": [
        [
          "au carré",
          "2"
        ],
        [
          "au cube",
          "3"
        ],
        [
          "à la puissance 4",
          "4"
        ]
      ]
  }
      ],
      "previousStatement": null,
      "nextStatement": null,
      "colour": Blockly.Blocks.math.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_CARRE_HELPURL
    });
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_CARRE_TOOLTIP.replace('%1',
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

Blockly.Blocks['sophus_doubler'] = {
  init: function() {
	var dropdown = new Blockly.FieldDropdown([
		['doubler', '2'], ['tripler', '3'], ['quadrupler', '4'], ['quintupler', '5'],
		['sextupler', '6'], ['décupler', '10'], ['centupler', '100']
	]);
	var variable = new Blockly.FieldVariable(Blockly.Msg.VARIABLES_DEFAULT_NAME);
	this.appendDummyInput()
		.appendField(dropdown, 'CHOIX')
		.appendField('la variable')
		.appendField(variable, 'VAR');
	this.setHelpUrl('');
	this.setPreviousStatement(true);
	this.setNextStatement(true);
	this.setColour(Blockly.Blocks.math.HUE);
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

Blockly.Blocks['sophus_augmenter'] = {
  init: function() {
    this.jsonInit({
      "message0": Blockly.Msg.SOPHUS_AUGMENTER_TITLE,
      "args0": [
        {
          "type": "field_variable",
          "name": "VAR",
          "variable": Blockly.Msg.SOPHUS_AUGMENTER_TITLE_ITEM
        },
        {
          "type": "input_value",
          "name": "DELTA",
          "check": "Number"
        }
      ],
      "previousStatement": null,
      "nextStatement": null,
      "colour": Blockly.Blocks.math.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_AUGMENTER_HELPURL
    });
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_AUGMENTER_TOOLTIP.replace('%1',
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

Blockly.Blocks['sophus_augmenter_fract'] = {
  init: function() {
    this.jsonInit({
  "message0": "augmenter %1 de %2 %3",
  "args0": [
        {
          "type": "field_variable",
          "name": "VAR",
          "variable": Blockly.Msg.SOPHUS_AUGMENTER_FRACT_TITLE_ITEM
        },
    {
      "type": "input_value",
      "name": "DELTA"
    },
    {
      "type": "field_dropdown",
      "name": "DENOM",
      "options": [
        [
          "tiers",
          "3"
        ],
        [
          "demis",
          "1"
        ],
        [
          "quarts",
          "4"
        ],
        [
          "cinquièmes",
          "5"
        ],
        [
          "sixièmes",
          "6"
        ],
        [
          "septièmes",
          "7"
        ],
        [
          "huitièmes",
          "8"
        ],
        [
          "neuvièmes",
          "9"
        ],
        [
          "dixièmes",
          "10"
        ],
        [
          "centièmes",
          "100"
        ]
      ]
    }
  ],
      "previousStatement": null,
      "nextStatement": null,
  "inputsInline": true,
      "colour": Blockly.Blocks.math.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_AUGMENTER_FRACT_HELPURL
});
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_AUGMENTER_FRACT_TOOLTIP.replace('%1',
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



Blockly.Blocks['sophus_augmenter_pct'] = {
  init: function() {
    this.jsonInit({
      "message0": Blockly.Msg.SOPHUS_AUGMENTER_PCT_TITLE,
      "args0": [
        {
          "type": "field_variable",
          "name": "VAR",
          "variable": Blockly.Msg.SOPHUS_AUGMENTER_PCT_TITLE_ITEM
        },
        {
          "type": "input_value",
          "name": "DELTA",
          "check": "Number"
        }
      ],
      "previousStatement": null,
      "nextStatement": null,
      "colour": Blockly.Blocks.math.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_AUGMENTER_PCT_HELPURL
    });
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_AUGMENTER_PCT_TOOLTIP.replace('%1',
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


Blockly.Blocks['sophus_diminuer'] = {
  init: function() {
    this.jsonInit({
      "message0": Blockly.Msg.SOPHUS_DIMINUER_TITLE,
      "args0": [
        {
          "type": "field_variable",
          "name": "VAR",
          "variable": Blockly.Msg.SOPHUS_DIMINUER_TITLE_ITEM
        },
        {
          "type": "input_value",
          "name": "DELTA",
          "check": "Number"
        }
      ],
      "previousStatement": null,
      "nextStatement": null,
      "colour": Blockly.Blocks.math.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_DIMINUER_HELPURL
    });
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_DIMINUER_TOOLTIP.replace('%1',
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

Blockly.Blocks['sophus_diminuer_fract'] = {
  init: function() {
    this.jsonInit({
  "message0": "diminuer %1 de %2 %3",
  "args0": [
        {
          "type": "field_variable",
          "name": "VAR",
          "variable": Blockly.Msg.SOPHUS_DIMINUER_FRACT_TITLE_ITEM
        },
    {
      "type": "input_value",
      "name": "DELTA"
    },
    {
      "type": "field_dropdown",
      "name": "DENOM",
      "options": [
        [
          "tiers",
          "3"
        ],
        [
          "demis",
          "1"
        ],
        [
          "quarts",
          "4"
        ],
        [
          "cinquièmes",
          "5"
        ],
        [
          "sixièmes",
          "6"
        ],
        [
          "septièmes",
          "7"
        ],
        [
          "huitièmes",
          "8"
        ],
        [
          "neuvièmes",
          "9"
        ],
        [
          "dixièmes",
          "10"
        ],
        [
          "centièmes",
          "100"
        ]
      ]
    }
  ],
      "previousStatement": null,
      "nextStatement": null,
  "inputsInline": true,
      "colour": Blockly.Blocks.math.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_DIMINUER_FRACT_HELPURL
});
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_DIMINUER_FRACT_TOOLTIP.replace('%1',
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


Blockly.Blocks['sophus_diminuer_pct'] = {
  init: function() {
    this.jsonInit({
      "message0": Blockly.Msg.SOPHUS_DIMINUER_PCT_TITLE,
      "args0": [
        {
          "type": "field_variable",
          "name": "VAR",
          "variable": Blockly.Msg.SOPHUS_DIMINUER_PCT_TITLE_ITEM
        },
        {
          "type": "input_value",
          "name": "DELTA",
          "check": "Number"
        }
      ],
      "previousStatement": null,
      "nextStatement": null,
      "colour": Blockly.Blocks.math.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_DIMINUER_PCT_HELPURL
    });
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_DIMINUER_PCT_TOOLTIP.replace('%1',
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
