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


Blockly.Blocks['tortue_x'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("abscisse de la tortue");
    this.setOutput(true, "Number");
    this.setColour(120);
    this.setTooltip('abscisse actuelle de la tortue');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['tortue_y'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("ordonnée de la tortue");
    this.setOutput(true, "Number");
    this.setColour(120);
    this.setTooltip('ordonnée actuelle de la tortue');
    this.setHelpUrl('');
  }
};


Blockly.Blocks['tortue_t'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("angle de la tortue");
    this.setOutput(true, "Number");
    this.setColour(120);
    this.setTooltip('angle que fait la tortue avec l\'horizontale');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['tortue_c'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("couleur de la tortue");
    this.setOutput(true);
    this.setColour(120);
    this.setTooltip('couleur du stylo');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['avancer'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("Number")
        .appendField(new Blockly.FieldImage("img/turtle.png", 32, 32, "*"))
        .appendField("avancer de");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(120);
    this.setTooltip('avancer la tortue');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['reculer'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("Number")
        .appendField(new Blockly.FieldImage("img/turtle.png", 32, 32, "*"))
        .appendField("reculer de");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(120);
    this.setTooltip('reculer la tortue');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['tortue_gauche'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldImage("img/turtle.png", 32, 32, "*"))
        .appendField("vers la gauche de")
        .appendField(new Blockly.FieldAngle(90), "NAME");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(120);
    this.setTooltip('tourner la tortue vers la gauche');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['tortue_droite'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldImage("img/turtle.png", 32, 32, "*"))
        .appendField("vers la droite de")
        .appendField(new Blockly.FieldAngle(90), "NAME");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(120);
    this.setTooltip('tourner la tortue vers la droite');
    this.setHelpUrl('');
  }
};


Blockly.Blocks['var_gauche'] = {
  init: function() {
    this.appendValueInput("ANGLE")
        .setCheck("Number")
        .appendField(new Blockly.FieldImage("img/turtle.png", 32, 32, "*"))
        .appendField("tourner à gauche de");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(120);
    this.setTooltip('tourner à gauche d\'un angle en degrés');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['var_droite'] = {
  init: function() {
    this.appendValueInput("ANGLE")
        .setCheck("Number")
        .appendField(new Blockly.FieldImage("img/turtle.png", 32, 32, "*"))
        .appendField("tourner à droite de");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(120);
    this.setTooltip('tourner à droite d\'un angle en degrés');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['mettre_angle'] = {
  init: function() {
    this.appendValueInput("ANGLE")
        .setCheck("Number")
        .appendField(new Blockly.FieldImage("img/turtle.png", 32, 32, "*"))
        .appendField("orienter la tortue de");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(120);
    this.setTooltip('imposer une direction à la tortue');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['teleport'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldImage("img/turtle.png", 32, 32, "*"))
        .appendField("téléporter la tortue en (")
        .appendField(new Blockly.FieldTextInput("0"), "X")
        .appendField(",")
        .appendField(new Blockly.FieldTextInput("0"), "Y")
        .appendField(")");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(120);
    this.setTooltip('téléporter sans changer l\'angle ni faire de tracé');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['tampon'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldImage("img/pencil.png", 32, 32, "*"))
        .appendField("donner un coup de tampon")
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(120);
    this.setTooltip('marquer un cercle à l\'emplacement de la tortue');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['teleport_var'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldImage("img/turtle.png", 32, 32, "*"))
        .appendField("téléporter la tortue en (")
        .appendField(new Blockly.FieldVariable("x"), "X")
        .appendField(",")
        .appendField(new Blockly.FieldVariable("y"), "Y")
        .appendField(")");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(120);
    this.setTooltip('déplacer la tortue vers des coordonnées variables');
    this.setHelpUrl('');
  }
};


Blockly.Blocks['lever_stylo'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldImage("img/pencil.png", 32, 32, "*"))
        .appendField("lever le stylo");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(120);
    this.setTooltip('dorénavant la tortue ne laisse plus de trace');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['baisser_stylo'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldImage("img/pencil.png", 32, 32, "*"))
        .appendField("baisser le stylo");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(120);
    this.setTooltip('dorénavant la tortue laisse des traces');
    this.setHelpUrl('');
  }
};


Blockly.Blocks['scribe'] = {
  init: function() {
    this.appendValueInput("texte")
        .appendField(new Blockly.FieldImage("img/pencil.png", 32, 32, "*"))
        .appendField("tamponner");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(120);
    this.setTooltip('la tortue écrit un texte là où elle est');
    this.setHelpUrl('');
  }
};


Blockly.Blocks['couleur_stylo'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldImage("img/pencil.png", 32, 32, "*"))
        .appendField("toner du stylo à")
        .appendField(new Blockly.FieldColour("#000066"), "colstyle");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(120);
    this.setTooltip('changer la couleur du stylo');
    this.setHelpUrl('');
  }
};

Blockly.Blocks['eff_svg'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldImage("img/droplet.png", 32, 32, "*"))
        .appendField("gommer le graphisme tortue");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(120);
    this.setTooltip('vider le graphique de la tortue');
    this.setHelpUrl('');
  }
};
Blockly.Blocks['reset'] = {
  init: function() {
    this.appendDummyInput()
        .appendField(new Blockly.FieldImage("img/droplet.png", 32, 32, "*"))
        .appendField("initialiser le graphisme tortue");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(120);
    this.setTooltip('initialiser le graphique de la tortue (sauf la couleur)');
    this.setHelpUrl('');
  }
};
