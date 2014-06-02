# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('input[name^="estado_"]').on 'click', ->
    if ($(this).prop('id').indexOf('danado') != -1)
      $('#dano_' + ($(this).prop('id').substring(7,$(this).prop('id').lastIndexOf("_")))).attr('disabled', false)
      $('#dano_' + ($(this).prop('id').substring(7,$(this).prop('id').lastIndexOf("_")))).focus()
    else
      $('#dano_' + ($(this).prop('id').substring(7,$(this).prop('id').lastIndexOf("_")))).attr('disabled', true)
    
  $('input[name^="prestamo_id"]').on 'click', ->
    $('#devolver_button').prop('disabled', false)
    if ($('input[name^="prestamo_id"]:checked').length == 0)
      $('#devolver_button').prop('disabled', true)

