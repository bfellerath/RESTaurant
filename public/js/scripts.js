console.log("Scripts are loaded.")

$( document ).ready(function() {



var minute =(1000*60);
// timeAgo/hour = hoursAgo

// if(hoursAgo>30){
//     .css('background-color', 'apricot')
// }

function collapse(elem){
    elem.hide();
    elem.find('button.shower').show();
}

// $('.shower').onClick(function(){
//     $(this).parent.show();
// })
var currentTime = Date.now();


    // $("#clear").click(function(elem){
    //   console.log(elem);
    //   var chefDivId = $(elem).attr('data-id');
    // //   console.log(chefDivId);
    // //   // if (chefDivId = "hidden"){
    // //   //
    // //   // }
    // //   // else if (chefDivId = $(elem).attr('data-id')){
    // //       $(elem).hide();
    // //   // }
    // //
    // });




    // //
    // $(".clear-all").click(function(){
    //     $("chefsdiv").hide();
    // });
    // // $("#show").click(function(){
    // //     $("p").show();

  // $('.chefsdiv').each(function(elem){
  // // var time = $(elem).attr('data-createdat')
  // // var minsAgo = (currentTime - Date.parse(time))/minute;
  // // if (minsAgo > 10) {
  // $(elem).click(function(elem){
  //    $(elem).hide();
  // });
  // // ('background-color', '#FF6666')
  // // }else if(minsAgo > 2){
  // //     $(elem).css('background-color', '#FFCC00')
  // // }
  // });



$('.chefsdiv').each(function(index, elem){
var time = $(elem).attr('data-createdat')
var minsAgo = (currentTime - Date.parse(time))/minute;
if (minsAgo > 10) {
$(elem).css('background-color', '#FF6666')
}else if(minsAgo > 2){
    $(elem).css('background-color', '#FFCC00')
}
});

});

// .sort_by('created_at', :desc) :asc

// this is an example from
// http://stackoverflow.com/questions/6989584/change-background-color-css-with-timer-jquery
