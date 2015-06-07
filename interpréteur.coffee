###présentation
###
$ ->
  $("#manuel, #academy").hide 10
  $("#syntaxe").on "click", ->
      $("#manuel").toggle 1000
  $("#porteparole").on "click", ->
      $("#academy").toggle 1000
  
  $("#runCoff0").on "click", ->
    try
      eval CoffeeScript.compile $("#scriptCoff0").val()
    catch e
      alert(e)
