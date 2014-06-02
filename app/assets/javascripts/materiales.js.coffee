# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#tabla_materiales').dataTable(
    bJQueryUI:true,
    bProcessing: true,
    bserverSide:true,
    sAjaxSource: $('#tabla_materiales').data('source')
  )
  $('#material_nombre').focus()
  $('#estado_usado').on 'click', ->
    $('#material_dano').attr('disabled', true)
  $('#estado_nuevo').on 'click', ->
    $('#material_dano').attr('disabled', true)
  $('#estado_danado').on 'click', ->
    $('#material_dano').attr('disabled', false)
    $('#material_dano').focus()

