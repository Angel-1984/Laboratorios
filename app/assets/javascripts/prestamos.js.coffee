# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#tabla_materiales_prestamo').dataTable(
    bJQueryUI:true,
    bProcessing: true,
    bserverSide:true,
    sAjaxSource: $('#tabla_materiales_prestamo').data('source')
  )