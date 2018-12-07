
  $( function() {
    $( "#tabs" ).tabs();
  
    $.ajax({
		type:"get",
		url:"details/thema_1.jsp",
		
		success: function(data) {
			$('#tabs-1').html(data);
		}//success
    	}); //ajax	
    $('#tabs li').click(function() {
		var litext = $(this).text();
		//alert(litext);

		if (litext == "발라드") {//subject.jsp
			$.ajax({
				type:"get",
				url:"details/thema_1.jsp",
				
				success: function(data) {
					$('#tabs-1').html(data);
				}//success
			}); //ajax
		} else if (litext == "힙합") {//company.jsp
			$.ajax({
				type:"get",
				url:"details/thema_2.jsp",
				
				success:function(result){
					 $('#tabs-2').html(result) 
				
				}//success
			}); //ajax
		} else if (litext == "락") {//company.jsp
			$.ajax({
				type:"get",
				url:"details/thema_3.jsp",
				
				success:function(result){
					 $('#tabs-3').html(result) 
				
				}//success
			}); //ajax
		} else if (litext == "POP") {//company.jsp
			$.ajax({
				type:"get",
				url:"details/thema_4.jsp",
				
				success:function(result){
					 $('#tabs-4').html(result) 
				
				}//success
			}); //ajax
		} else if (litext == "국악") {//company.jsp
			$.ajax({
				type:"get",
				url:"details/thema_5.jsp",
				
				success:function(result){
					 $('#tabs-5').html(result) 
				
				}//success
			}); //ajax
		}
	});//click
	
  } );
 