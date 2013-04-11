# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#estado_usado').on 'click', ->
    $('#devolucion_dano').attr('disabled', true)
  $('#estado_nuevo').on 'click', ->
    $('#devolucion_dano').attr('disabled', true)
  $('#estado_danado').on 'click', ->
    $('#devolucion_dano').attr('disabled', false)
    
