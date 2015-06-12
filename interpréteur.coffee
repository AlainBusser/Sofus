traduction = (dutexte) ->
  texte = dutexte
  texte = texte.replace /\ dans\ /g, " in "
  texte = texte.replace /pour\ /g, "for "
  texte = texte.replace /Pour\ /g, "for "
  texte = texte.replace /Sinon/g, "else"
  texte = texte.replace /sinon/g, "else"
  texte = texte.replace /Si\ /g, "if "
  texte = texte.replace /\ nouvelle\ /g, " new "
  texte = texte.replace /Tant que\ /g, "while "
  texte = texte.replace /Jusqu'à ce que\ /g, "until "
  texte = texte.replace /\ devient\ /g, " = "
  texte
  
correction = (unAlgo) ->
  texte = unAlgo
  texte = texte.replace /.foisFaire/g, " fois faire"
  texte
###présentation
###
$ ->
  $("#manuel, #academy").hide 10
  $("#syntaxe").on "click", ->
      $("#manuel").toggle 1000
  $("#porteparole").on "click", ->
      $("#academy").toggle 1000
  
  $("#transfert").on "click", ->
    $("#academy").show 1000
    $("#academy").val correction $("#scriptCoff0").val()
  
  $("#runCoff0").on "click", ->
    try
      eval CoffeeScript.compile traduction $("#scriptCoff0").val()
    catch e
      alert(e)
