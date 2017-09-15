var jsonStr;
	function gma(obj) {
	
		$.ajax({
			type : "post",
			url : "date/gmdata.jsp",
			data : {
				"pid" : obj.value
			},
			success : function(data) {
				jsonStr = obj.value;
				
				$("#gmerji").empty();
				$("#gmerji").append("<option value=''>----</option>");
				var jdata = eval("(" + data + ")");
				for (var i = 0; i < jdata.length; i++) {
					$("#gmerji").append(
							"<option value='"+jdata[i].code2+"'>" + jdata[i].Title
									+ "</option>");
				}
			}
		});
	}

	function gmb(obj) 
	{
		$.ajax({
			type : "post",
			url : "gmdata1.jsp",
			data :{
				"pid":jsonStr,
				"pid1":obj.value
			},

			success : function(data) {

				$("#gmsanji").empty();
				$("#gmsanji").append("<option value=''>----</option>");
				var jdata = eval("(" + data + ")");
				for (var i = 0; i < jdata.length; i++) {
					$("#gmsanji").append(
							"<option value='"+jdata[i].id+"'>" + jdata[i].Title
									+ "</option>");
				}
			}
		});
	}