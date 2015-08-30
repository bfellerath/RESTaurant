console.log("Scripts are loaded.")


function changeColor(element, curNumber){
    curNumber++;

    if(curNumber > 4){
        curNumber = 1;
    }

    element.addClass('color' + curNumber, 1000);

    // So previous classes get removed.
    element.attr('class', 'color' + curNumber);

    setTimeout(function(){changeColor(element, curNumber)}, 2000);
}

changeColor($('#chefsdiv'), 0);

// this is an example from
// http://stackoverflow.com/questions/6989584/change-background-color-css-with-timer-jquery
