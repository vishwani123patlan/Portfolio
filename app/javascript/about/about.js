$(document).ready(function(){
  startAnimation();
  function startAnimation(){
    jQuery('.skills_div').each(function(){
      jQuery(this).find('.skillbar').animate({
        width:jQuery(this).attr('data-percent')
      },6000); 
    });
  }                
});