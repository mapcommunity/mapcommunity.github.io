/*
 * This file is provided for custom JavaScript logic that your HTML files might need.
 * Maqetta includes this JavaScript file by default within HTML pages authored in Maqetta.
 */
/*require(["dojo/ready"], function(ready){
     ready(function(){
         // logic that requires that Dojo is fully initialized should go here

     });
});*/

$(document).ready(function() {
        $(".innerlink").on("click", function(){
	    $("#manifesto").load($(this).attr("href"));
	    return false;
     });
});

function loadUrl(newLocation){
  		window.location.href = newLocation;
};

$(document).ready(function() {
        $(".events").on("click", function(){  
		//var foo = ($this).getElementsByClassName("levents");
		$(this).find(".levents").toggle();
		return false;
     });
});

$(document).ready(function() {
        $(".events").on("mouseleave", function(){  
		//var foo = ($this).getElementsByClassName("levents"); 
		$(this).find(".levents").hide();
		return false;
     });
});

