var rows = 16;
var columns = 16;

/* This function defines what happens after button is pressed: 
   clear current sketch and make new grid with user defined size */
start=function(){
    $("#container").empty();
    $row.empty();
    $square.empty();
    $("#container").css("background-color", "#FFFFFF");
    
    var userInput=prompt("give new size", value=64);
    if(userInput>64){
        document.getElementById("output").innerHTML = "Try smaller value";
        userInput=64;
    }
    rows=userInput;
    columns = userInput;
    
    grid();
    $('div').hover(function() {
       $(this).css("background-color", "yellow"); 
       $("#container").css("background-color", "#FFFFFF");
   });
};

/* Sketch pad grid is greated with this function*/
grid=function(){
    $square.width(640/columns);
    $square.height(640/rows);
    //make one row from the squares
    for (var i = 0; i < columns; i++) {
        $row.append($square.clone());
    }
    //clone the row to make a grid inside the container
    for (var i = 0; i < rows; i++) {
        $("#container").append($row.clone());
    }
};
/* Temporary objects to create the grid*/
var $row = $("<div />", {
    class: 'row'
});
var $square = $("<div />", {
    class: 'square'
});

/* When page is ready make initial grid and start changing square colors */
$(document).ready(function () {
    grid();   
    
    $('div').hover(function() {
       $(this).css("background-color", "yellow");
   });
   
});