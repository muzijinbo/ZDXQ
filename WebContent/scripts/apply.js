/**
 * 
 */

 $(function () {
 		 
          
       
          $("#TK2").hide();
          $("#TK3").hide();
          $("#TK4").hide();
          $("#TK5").hide();
     
          
      }) 
      
     $(document).ready(function(){
    	 $("#TK1").change(function(){
    		 if($("#TK1").val()==""){
    			 $("#TK1").focus(); 
    			 alert("1为空啦！");
    		 }
    		 else if($("#TK1").val()!=""){
    			 $("#TK2").show(); 
    		 }
    		 else if($("#TK1").val()!=""&&$("#TK2").val()!=""){$("#TK3").show(); }
    		 else if($("#TK1").val()!=""&&$("#TK2").val()!=""&&$("#TK3").val()!=""){$("#TK4").show(); }
    		 else if($("#TK1").val()!=""&&$("#TK2").val()!=""&&$("#TK3").val()!=""&&$("#TK4").val()!=""){$("#TK5").show();}
    		 else{alert("不可能吧！1")}
    	 });
    	 $("#TK2").change(function(){
    		 
    		 if($("#TK1").val()==""){
    			 $("#TK1").focus(); 
    			 alert("1为空啦"); 
        	}
    		 else if($("#TK2").val()==""){
    			  $("#TK2").focus(); 
        			alert("2为空啦"); 
        		 }
        	 else if($("#TK1").val()!=""&&$("#TK2").val()!=""){
        		 $("#TK3").show(); 
        			
        	 }
        	 else if($("#TK1").val()!=""&&$("#TK2").val()!=""&&$("#TK3").val()!=""){$("#TK4").show(); }
        	 else if($("#TK1").val()!=""&&$("#TK2").val()!=""&&$("#TK3").val()!=""&&$("#TK4").val()!=""){$("#TK5").show();}
        	 else{
        		 alert("不可能吧！2");
        	 }
    	 });
    	 $("#TK3").change(function(){
    		 	
    		if($("#TK1").val()==""){
    			 $("#TK1").focus(); 
    			 alert("1为空啦"); 
        	}
    		else if($("#TK2").val()==""){
    			  $("#TK2").focus(); 
        			alert("2为空啦"); 
        	}
    		else if($("#TK3").val()=="" ){
    			 $("#TK3").focus();
    				 alert("3为空啦");
    		} 
    		else if($("#TK1").val()!=""&&$("#TK2").val()!=""&&$("#TK3").val()!=""){
   		 	    $("#TK4").show(); 
   		 	}
    		else if($("#TK1").val()!=""&&$("#TK2").val()!=""&&$("#TK3").val()!=""&&$("#TK4").val()!=""){$("#TK5").show();}
    		else {alert("不可能吧！")}	 
    	 });
    	 $("#TK4").change(function(){
    		 
    		 if($("#TK1").val()=="" ){
				 $("#TK1").focus();
				 alert("1为空啦");
			 }
			 else if($("#TK2").val()=="" ){
				 $("#TK2").focus();
				 alert("2为空啦");
			 }
			 else if($("#TK3").val()=="" ){
				 $("#TK3").focus();
				 alert("3为空啦");
			 } 
			 else if($("#TK4").val()=="" ){
				 $("#TK4").focus();
				 alert("4为空啦");
			 } 
			 else if($("#TK1").val()!=""&&$("#TK2").val()!=""&&$("#TK3").val()!=""&&$("#TK4").val()!=""){
		 		 $("#TK5").show(); 
		 	}
			 else{
				 alert("不可能啦！4");
			 }
    		 
    	 });
			$("#TK5").change(function(){
    		 
    		 if($("#TK1").val()=="" ){
				 $("#TK1").focus();
				 alert("1为空啦");
			 }
			 else if($("#TK2").val()=="" ){
				 $("#TK2").focus();
				 alert("2为空啦");
			 }
			 else if($("#TK3").val()=="" ){
				 $("#TK3").focus();
				 alert("3为空啦");
			 } 
			 else if($("#TK4").val()=="" ){
				 $("#TK4").focus();
				 alert("4为空啦");
			 } 
			 else if($("#TK5").val()=="" ){
				 $("#TK4").focus();
				 alert("5为空啦");
			 }
			 else{
				 
			 }
    		 
    	 });
     });
     
     
     
    function my(){
    	
		var x=document.getElementById("yyhy");
		var y=document.getElementById("yjlx");
		
		var ly1=document.getElementById("ly1");
		var ly2=document.getElementById("ly2");
		var ly3=document.getElementById("ly3");
		var ly4=document.getElementById("ly4");
		var ly5=document.getElementById("ly5");
		var ly6=document.getElementById("ly6");
		var ly7=document.getElementById("ly7");
		var ly8=document.getElementById("ly8");
		var ly9=document.getElementById("ly9");
		var ly10=document.getElementById("ly10");
		var ly11=document.getElementById("ly11");
		var ly12=document.getElementById("ly11");
		
		
		if(y.checked){
			x.disabled=true;
			//z.disabled=false;
			$(".XK1").show();
			ly1.disabled=true;
			ly2.disabled=true;
			ly3.disabled=true;
			ly4.disabled=true;
			ly5.disabled=true;
			ly6.disabled=true;
			ly7.disabled=true;
			ly8.disabled=true;
			ly9.disabled=true;
			ly10.disabled=true;
			ly11.disabled=true;
			ly12.disabled=true;
			 
		}else{
			$(".XK1").hide();
			//z.disabled=true;
			x.disabled=false;
			ly1.disabled=false;
			ly2.disabled=false;
			ly3.disabled=false;
			ly4.disabled=false;
			ly5.disabled=false;
			ly6.disabled=false;
			ly7.disabled=false;
			ly8.disabled=false;
			ly9.disabled=false;
			ly10.disabled=false;
			ly11.disabled=false;
			ly12.disabled=false;
			
		}
	}
    function my1() {
		var a=document.getElementById("SumM");
		var b=document.getElementById("SM");
		var c=document.getElementById("BM");
		var d=document.getElementById("OM");
		a.value=parseInt(b.value, 10)+parseInt(c.value, 10)+parseInt(d.value, 10);
		
	}
   
		  
     
   