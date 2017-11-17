$(document).ready(function(){
  
  // Or use a custom callback
  $('#range-3').range({
    min: 0,
    max: 10,
    start: 5,
    onChange: function(value) {
      $('#display-3').html(value);
    }
  });
  
});