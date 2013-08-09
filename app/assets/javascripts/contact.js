$(document).ready ( function(){
	$('#try').on('click', function(){
		
		$(this).parent().find('img').toggle();
	});
	
	$( "#draggable" ).draggable();
	
 
	 
	 $( "#droppable" ).droppable({
		 drop: function( event, ui ) {
			 $( this )
			 .addClass( "ui-state-highlight" )
			 .find( "p" )
			 .html( "Dropped!" );
			 }
	 });

	
	
	
});