# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#tabla_laboratorios').dataTable(
    bJQueryUI:true,
    bProcessing: true,
    bserverSide:true,
    sAjaxSource: $('#tabla_laboratorios').data('source')
  )
  
  $("#laboratorio_nombre").focus()
