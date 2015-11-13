// bloc engendré par Blockly, à copier-coller dans les définitions de blocs


Blockly.Blocks['augmenter'] = {
  init: function() {
    this.appendValueInput("VAR1")
        .setCheck("Number")
        .appendField("augmenter")
        .appendField(new Blockly.FieldVariable("item"), "v");
    this.appendValueInput("DELTA")
        .setCheck("Number")
        .appendField("de");
    this.appendDummyInput()
        .appendField(new Blockly.FieldDropdown([["pourcents", "POURCENTNAME"], ["demis", "HALFNAME"], ["tiers", "THIRDNAME"]]), "MODALITE");
    this.setInputsInline(true);
    this.setColour(160);
    this.setTooltip('');
    this.setHelpUrl('http://www.example.com/');
  }
};




//et à mettre dans le JavaaScript

Blockly.JavaScript['augmenter'] = function(block) {
  var variable_v = Blockly.JavaScript.variableDB_.getName(block.getFieldValue('v'), Blockly.Variables.NAME_TYPE);
  var value_var1 = Blockly.JavaScript.valueToCode(block, 'VAR1', Blockly.JavaScript.ORDER_ATOMIC);
  var value_delta = Blockly.JavaScript.valueToCode(block, 'DELTA', Blockly.JavaScript.ORDER_ATOMIC);
  var dropdown_modalite = block.getFieldValue('MODALITE');
  // TODO: Assemble JavaScript into code variable.
  var code = '...';
  return code;
};



//bon courage ...