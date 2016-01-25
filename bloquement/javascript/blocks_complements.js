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
          "type": "field_image",
          "src": "./img/puissance.png",
          "width": 64,
          "height": 32, 
          "alt": "[^]:   "
      },
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
      "colour": Blockly.Blocks.variables.HUE,
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
       .appendField(new Blockly.FieldImage("./img/multiplier.png", 64, 32, "[*]:   "))
 		.appendField(dropdown, 'CHOIX')
		.appendField('la variable')
		.appendField(variable, 'VAR');
	this.setHelpUrl('');
	this.setPreviousStatement(true);
	this.setNextStatement(true);
	this.setColour(Blockly.Blocks.variables.HUE);
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
          "type": "field_image",
          "src": "./img/augmenter.png",
          "width": 64,
          "height": 32, 
          "alt": "[+]:   "
      },
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
      "colour": Blockly.Blocks.variables.HUE,
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
  "message0": "%1 augmenter %2 de %3 %4",
  "args0": [
      {
          "type": "field_image",
          "src": "./img/augmenter.png",
          "width": 64,
          "height": 32, 
          "alt": "[+]:   "
      },
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
          "pourcents",
          "100"
        ],
        [
          "demis",
          "2"
        ],
        [
          "tiers",
          "3"
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
      "colour": Blockly.Blocks.variables.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_AUGMENTER_FRACT_HELPURL
});
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_AUGMENTER_FRACT_TOOLTIP.replace('%2',
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
          "type": "field_image",
          "src": "./img/augmenter.png",
          "width": 64,
          "height": 32, 
          "alt": "[+]:   "
      },
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
      return Blockly.Msg.SOPHUS_AUGMENTER_PCT_TOOLTIP.replace('%2',
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
          "type": "field_image",
          "src": "./img/diminuer.png",
          "width": 64,
          "height": 32, 
          "alt": "[-]:   "
      },
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
      "colour": Blockly.Blocks.variables.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_DIMINUER_HELPURL
    });
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_DIMINUER_TOOLTIP.replace('%2',
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
  "message0": "%1 diminuer %2 de %3 %4",
  "args0": [
      {
          "type": "field_image",
          "src": "./img/diminuer.png",
          "width": 64,
          "height": 32, 
          "alt": "[-]:   "
      },
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
          "pourcents",
          "100"
        ],
        [
          "demis",
          "2"
        ],
        [
          "tiers",
          "3"
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
      "colour": Blockly.Blocks.variables.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_DIMINUER_FRACT_HELPURL
});
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_DIMINUER_FRACT_TOOLTIP.replace('%2',
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
          "type": "field_image",
          "src": "./img/diminuer.png",
          "width": 64,
          "height": 32, 
          "alt": "[-]:   "
      },
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
      return Blockly.Msg.SOPHUS_DIMINUER_PCT_TOOLTIP.replace('%2',
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






Blockly.Blocks['sophus_multiplier'] = {
  init: function() {
    this.jsonInit({
      "message0": Blockly.Msg.SOPHUS_MULTIPLIER_TITLE,
      "args0": [
      {
          "type": "field_image",
          "src": "./img/multiplier.png",
          "width": 64,
          "height": 32, 
          "alt": "[*]:   "
      },
        {
          "type": "field_variable",
          "name": "VAR",
          "variable": Blockly.Msg.SOPHUS_MULTIPLIER_TITLE_ITEM
        },
        {
          "type": "input_value",
          "name": "DELTA",
          "check": "Number"
        }
      ],
      "previousStatement": null,
      "nextStatement": null,
      "colour": Blockly.Blocks.variables.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_MULTIPLIER_HELPURL
    });
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_MULTIPLIER_TOOLTIP.replace('%2',
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


Blockly.Blocks['sophus_diviser'] = {
  init: function() {
    this.jsonInit({
      "message0": Blockly.Msg.SOPHUS_DIVISER_TITLE,
      "args0": [
      {
          "type": "field_image",
          "src": "./img/diviser.png",
          "width": 64,
          "height": 32, 
          "alt": "[/]:   "
      },
        {
          "type": "field_variable",
          "name": "VAR",
          "variable": Blockly.Msg.SOPHUS_DIVISER_TITLE_ITEM
        },
        {
          "type": "input_value",
          "name": "DELTA",
          "check": "Number"
        }
      ],
      "previousStatement": null,
      "nextStatement": null,
      "colour": Blockly.Blocks.variables.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_MULTIPLIER_HELPURL
    });
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_MULTIPLIER_TOOLTIP.replace('%2',
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

Blockly.Blocks['sophus_multiplier_fract'] = {
  init: function() {
    this.jsonInit({
  "message0": "%1 multiplier %2 par %3 %4",
  "args0": [
      {
          "type": "field_image",
          "src": "./img/multiplier.png",
          "width": 64,
          "height": 32, 
          "alt": "[*]:   "
      },
        {
          "type": "field_variable",
          "name": "VAR",
          "variable": Blockly.Msg.SOPHUS_MULTIPLIER_FRACT_TITLE_ITEM
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
          "pourcents",
          "100"
        ],
        [
          "demis",
          "2"
        ],
        [
          "tiers",
          "3"
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
      "colour": Blockly.Blocks.variables.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_MULTIPLIER_FRACT_HELPURL
});
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_MULTIPLIER_FRACT_TOOLTIP.replace('%2',
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


Blockly.Blocks['sophus_diviser_fract'] = {
  init: function() {
    this.jsonInit({
  "message0": "%1 diviser %2 par %3 %4",
  "args0": [
      {
          "type": "field_image",
          "src": "./img/diviser.png",
          "width": 64,
          "height": 32, 
          "alt": "[/]:   "
      },
        {
          "type": "field_variable",
          "name": "VAR",
          "variable": Blockly.Msg.SOPHUS_DIVISER_FRACT_TITLE_ITEM
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
          "pourcents",
          "100"
        ],
        [
          "demis",
          "2"
        ],
        [
          "tiers",
          "3"
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
      "colour": Blockly.Blocks.variables.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_DIVISER_FRACT_HELPURL
});
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_DIVISER_FRACT_TOOLTIP.replace('%2',
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




Blockly.Blocks['sophus_arrondir'] = {
  init: function() {
    this.jsonInit({
  "message0": "%1 arrondir %2 à %3 %4",
  "args0": [
      {
          "type": "field_image",
          "src": "./img/arrondi.png",
          "width": 64,
          "height": 32, 
          "alt": "[O]:   "
      },
        {
          "type": "field_variable",
          "name": "VAR",
          "variable": Blockly.Msg.SOPHUS_ARRONDIR_TITLE_ITEM
        },
    {
      "type": "input_value",
      "name": "DELTA"
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
      "previousStatement": null,
      "nextStatement": null,
  "inputsInline": true,
      "colour": Blockly.Blocks.variables.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_ARRONDIR_HELPURL
});
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_ARRONDIR_TOOLTIP.replace('%2',
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




Blockly.Blocks['sophus_tronquer'] = {
  init: function() {
    this.jsonInit({
  "message0": "%1 tronquer %2 à %3 %4",
  "args0": [
      {
          "type": "field_image",
          "src": "./img/troncature.png",
          "width": 64,
          "height": 32, 
          "alt": "[o]:   "
      },
        {
          "type": "field_variable",
          "name": "VAR",
          "variable": Blockly.Msg.SOPHUS_TRONQUER_TITLE_ITEM
        },
    {
      "type": "input_value",
      "name": "DELTA"
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
      "previousStatement": null,
      "nextStatement": null,
  "inputsInline": true,
      "colour": Blockly.Blocks.variables.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_TRONQUER_HELPURL
});
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_TRONQUER_TOOLTIP.replace('%2',
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


/*

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


*/


Blockly.Blocks['sophus_puissance'] = {
  init: function() {
    this.jsonInit({
      "message0": Blockly.Msg.SOPHUS_PUISSANCE_TITLE,
      "args0": [
      {
          "type": "field_image",
          "src": "./img/puissance.png",
          "width": 64,
          "height": 32, 
          "alt": "[^]:   "
      },
        {
          "type": "field_variable",
          "name": "VAR",
          "variable": Blockly.Msg.SOPHUS_PUISSANCE_TITLE_ITEM
        },
        {
          "type": "input_value",
          "name": "POW",
          "check": "Number"
        }
      ],
      "previousStatement": null,
      "nextStatement": null,
      "colour": Blockly.Blocks.variables.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_PUISSANCE_HELPURL
    });
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_PUISSANCE_TOOLTIP.replace('%2',
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


Blockly.Blocks['sophus_inverser'] = {
  init: function() {
    this.jsonInit({
  "id": "sophus_inverser",
  "message0": Blockly.Msg.SOPHUS_INVERSER_TITLE,
  "args0": [
      {
          "type": "field_image",
          "src": "./img/inverse.png",
          "width": 64,
          "height": 32, 
          "alt": "[un]:   "
      },
    {
      "type": "field_variable",
          "name": "VAR",
          "variable": Blockly.Msg.SOPHUS_INVERSER_TITLE_ITEM
    }
  ],
  "inputsInline": true,
  "previousStatement": null,
  "nextStatement": null,
      "colour": Blockly.Blocks.variables.HUE,
      "helpUrl": Blockly.Msg.SOPHUS_INVERSER_HELPURL
});
    var thisBlock = this;
    this.setTooltip(function() {
      return Blockly.Msg.SOPHUS_INVERSER_TOOLTIP.replace('%2',
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

Blockly.Blocks['big_aff'] = {
  init: function() {
    this.appendValueInput("VAR")
        .appendField("ajouter en bas");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(20);
    this.setTooltip('afficher en bas de page');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['big_efface'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("palimpseste");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(20);
    this.setTooltip('effacer la sortie des grands nombres');
    this.setHelpUrl('https://fr.wikipedia.org/wiki/Palimpseste');
  }
};

