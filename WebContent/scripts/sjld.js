


var jsonStr;
		function a(obj) {
		
			$.ajax({
				type : "post",
				url : "data.jsp",
				data : {
					"pid" : obj.value
				},
				success : function(data) {
					jsonStr = obj.value;
					$("#erji").show();
					$("#erji").empty();
					$("#erji").append("<option value=''>----</option>");
					var jdata = eval("(" + data + ")");
					for (var i = 0; i < jdata.length; i++) {
						$("#erji").append(
								"<option value='"+jdata[i].code2+"'>" + jdata[i].Title
										+ "</option>");
					}
				}
			});
		}
	
		function b(obj) 
		{
			$.ajax({
				type : "post",
				url : "data1.jsp",
				data :{
					"pid":jsonStr,
					"pid1":obj.value
				},

				success : function(data) {
					$("#sanji").show();
					$("#sanji").empty();
					$("#sanji").append("<option value=''>----</option>");
					var jdata = eval("(" + data + ")");
					for (var i = 0; i < jdata.length; i++) {
						$("#sanji").append(
								"<option value='"+jdata[i].id+"'>" + jdata[i].Title
										+ "</option>");
					}
				}
			});
		}