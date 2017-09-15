
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
     <base href="<%=basePath%>">
    <title>需求浏览</title>
    <link href="css/themes/default/easyui.css" rel="stylesheet" />
    <link href="css/themes/icon.css" rel="stylesheet" />
    <link href="css/themes/color.css" rel="stylesheet" />
    <script src="scripts/jquery.min.js"></script>
    <script src="scripts/jquery.easyui.min.js"></script>
    <script src="scripts/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript">
    function show_XSSHSatu(v){     
        alert(v);  
       // XSSHSatu1=v;   
    }
    function getChecked(){    	
		console.info($('#t1').tree('getChecked'));
		//alert($("#t1").tree('getSelected').id);
	}
        $(function () {
        	$('#t1').tree({
    			//发送异步ajax请求, 还会携带一个id的参数 
    				url:'tree-getNodes' ,
    				dnd:true , 
    				checkbox:true,
    				//lines:true,
    				cascadeCheck:true,
    				onDrop:function(target , source , point){
    					var tar = $('#t1').tree('getNode' , target);
    					$.ajax({
    						type:'post',
    						url:'tree-getNodes' , 
    						data:{
    							targetId:tar.id , 
    							sourceId:source.id , 
    							point:point
    						} , 
    						dataType:'json' , 
    						cache:false , 
    						success:function(result){
    							$.messager.show({
    								title:'提示信息' ,
    								msg:'操作成功!'
    							});
    						}
    					});
    				} 		
    			});

    		
            
        	/*  function show_XSSHSatu(v){     
                 alert(v);  
                // XSSHSatu1=v;   
             } */
        	var pars = {                   
                	u_id:$("#CompanyID").val(),                 	
                	u_name:$("#UserName").val(),
                	n_name:$("#n_name").val(),
                	//XSSHSatu:$("#XSSHSatu").val()
                };
        	
            loadData(pars);

            var rowIndex = 1;
            $("#2").hide();
    		$("#3").hide();
    		$("#4").hide();
        	$("#addCondition").click(
        			function() {
        				//alert("按钮已点击");
        				//克隆第一行并将其追加到表格的尾部
        				//$("tr:eq(1)").clone().appendTo("#conditionTable");
        				//点击的次数是奇数就在左边的表添加一行
        				if (rowIndex >3) {
        					alert("最多可添加4个查询条件");
        				} else {		
        					rowIndex++;
        					$("#"+rowIndex).show();
        				}
        	});
        	$("#delCondition").click(function() {
        		//最少要保留前两行
        		//alert(rowIndex);
        		 if (rowIndex > 1) {
        			$("#" + rowIndex).hide();
        			rowIndex--;
        		} else { 
        			alert("至少保留1个查询条件");
        		}
        	});
			
        	    
        	/* $("#btnSerach").click(function() {
        		
        			alert("!!!!");
        		
        	}); */
           $("#btnSerach").click(function () {
            	var searchCon = "";
            	for ( var i = 1; i < rowIndex; i++) {
					searchCon
							+= $("#conditionName" + i).val() + ","
							+ $("#conditionValue" + i).val() + ","
							+ $("#searchMethod" + i).val() + ";";
				}
				alert(searchCon);
            	var checks = $('#t1').tree('getChecked');
            	if(checks.length <=0){
					$.messager.show({
						title:'提示信息!',
						msg:'没有选择分类查询条件!'
					});
				}
            	var ids = '';
				for(var i =0 ;i<checks.length;i++){
					ids += checks[i].id + ',' ;	
				}
				ids = ids.substring(0 , ids.length-1);
				alert(ids);
                var XSSHSatu1;
                
            	var pars = {                    
                    	u_id:$("#CompanyID").val(),                 	
                    	u_name:$("#conditionValue1").val(),
                    	n_name:$("#conditionValue2").val(),
                    	problem:$("#conditionValue3").val(),
                    	key:$("#conditionValue4").val(),
                    	ids:ids
                    	//XSSHSatu: $("#state option:selected").val()
                    };
            	//alert( $("#state option:selected").val());
                loadData(pars);
            }); 
        	
        });
         function loadData(pars) {
            $('#date').datagrid({
                //url: '../listDate/listdata2.jsp',
                url: 'need-list',
                //width: 1000,
                //height: 400,
                width: ($(window).width()*0.90)-130, 
                height:($(window).height()*0.99)-100, 
                //fit:true,
                fitColumns: true, //列自适应
                nowrap: false,
                idField: 'n_id',//主键列的列名
                loadMsg: '正在加载信息...',
                pagination: true,//是否有分页
                //singleSelect: false,//是否单行选择
                pageSize: 10,//每页多少条数据
                pageNumber: 1,//默认的页
                pageList: [10, 20, 30],
                queryParams: pars,//往后台传递参数
                columns: [[
                    { field: 'n_id', title: '',checkbox: true },
                    { field: 'n_name', title: '需求名称', align: 'center', width: 100 },
                   {
                        field: 'user',
                        title: '机构名称', 
                        align: 'center', 
                        width: 100,
                        formatter:function(value,row,index){
							return row.user.u_name;
                         }				  
                    },                
                    { field: 'n_timeMin', title: '需求有效时间最小', align: 'center', width: 100 },
                    { field: 'n_timeMax', title: '需求有效时间最大', align: 'center', width: 100 },
                    { field: 'n_introduce', title: '需求简介', align: 'center', width: 100 },
                    { field: 'n_problem', title: '关键问题', align: 'center', width: 100 },
                    { field: 'n_key', title: '关键字', align: 'center', width: 100 },
                   
                     {
                        field: 'bm',
                        title: '归属部门', 
                        align: 'center', 
                        width: 100,
                        formatter:function(value,row,index){
							return row.bm.bm_name;
                         }					  
                    },                 
               		{
                          field: 'operation', title: '操作', align: 'center', width: 100,
                          formatter: function (value, row, index) {
                              var str = "";
                              str += '<a href="../check/checkUser.jsp?ID=' + row.Nno + '&&CompanyID=' + row.CompanyID+ '" class="easyui-linkbutton c1" style="width:70px">查看</a>';                              
                             //str += '<a href="check.jsp" class="easyui-linkbutton c1" style="width:50px">修改</a>';                              
                              //str += '<a href="check.jsp?ID=(\'' + Id + '\');" class="easyui-linkbutton c5" tyle="width:50px">隐藏</a>';
                              return str;
                          }
                      }
                       ]], 
            });
        } 

     	
    </script>
    <style>
        body{
            font-size:12px;
            overflow-y:hidden;
        }
        input{
            width:100px;            
        }
        select{
            width:104px;
        }
        #conditionTable{
            /*border:1px solid #0094ff;*/
            width:900px;
            
        }
        #conditionTable td{
            width:100px;
            height:20px;
            text-align:right
        }
    </style>
</head>
<body class="easyui-layout">

	<div data-options="region:'west',title:'West',split:true" style="width:200px;">
			<ul id="t1"></ul>
			<input type="button" onclick="getChecked()" value="获取勾选的节点"/>
			 	
	</div>
	<div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;"> 
    <div>
    <table style="width: 100px;margin-left:300px">
    	<tr>
			<td>	
				<a id="addCondition" class="icon-add" style="display:block;  href="javascript:void(0);">.</a>
			</td>
			<td>
				<a id="delCondition" class="icon-remove" style="display:block; href="javascript:void(0);">.</a>				
			</td>
							
							
			</tr>
    </table>
        <table id="conditionTable"  >
                		
						<tr id="1">
							<td>
								<select name="condition1" id="conditionName1" style="width:200px;" class="easyui-combobox">
											<option value="0,机构全称" selected="selected">机构全称</option>
											<option value="0,技术需求名称">技术需求名称</option>
											<option value="0,关键问题">关键问题</option>
											<option value="0,关键字">关键字</option>
				

								</select>&nbsp;&nbsp;
								
								<input type="text" id="conditionValue1" style="width:200px;" class="easyui-textbox">&nbsp;
								<select  class="easyui-combobox" style="width:100px;"
										name="searchMethod1" id="searchMethod1">
										<option value="精确">精确</option>
										<option value="模糊">模糊</option>
								</select>
							</td>
							
						</tr>
						<tr id="2" >
							<td>
								<select name="condition2" id="conditionName2" style="width:200px;" class="easyui-combobox">
											<option value="0,机构全称">机构全称</option>
											<option value="0,技术需求名称" selected="selected">技术需求名称</option>
											<option value="0,关键问题">关键问题</option>
											<option value="0,关键字">关键字</option>

								</select>&nbsp;&nbsp;
								
								<input type="text" id="conditionValue2" style="width:200px;" class="easyui-textbox">&nbsp;
								  
								<select  class="easyui-combobox" style="width:100px;"
										name="searchMethod1" id="searchMethod2">
										<option value="精确">精确</option>
										<option value="模糊">模糊</option>
								</select>
							</td>
							
						</tr>
						<tr id="3">
							<td>
								<select name="condition3" id="conditionName3" style="width:200px;" class="easyui-combobox">
											<option value="0,机构全称">机构全称</option>
											<option value="0,技术需求名称">技术需求名称</option>
											<option value="0,关键问题" selected="selected">关键问题</option>
											<option value="0,关键字">关键字</option>

								</select>&nbsp;&nbsp;
								
								<input type="text" id="conditionValue3" style="width:200px;" class="easyui-textbox">&nbsp;
								<select  class="easyui-combobox" style="width:100px;"
										name="searchMethod3" id="searchMethod3">
										<option value="精确">精确</option>
										<option value="模糊">模糊</option>
								</select>
							</td>
							
						</tr>
						<tr id="4">
							<td>
								<select name="condition4" id="conditionName4" style="width:200px;" class="easyui-combobox">
											<option value="0,机构全称">机构全称</option>
											<option value="0,技术需求名称">技术需求名称</option>
											<option value="0,关键问题" >关键问题</option>
											<option value="0,关键字" selected="selected">关键字</option>

								</select>&nbsp;&nbsp;
								
								<input type="text" id="conditionValue4" style="width:200px;" class="easyui-textbox">&nbsp;
								<select  class="easyui-combobox" style="width:100px;"
										name="searchMethod4" id="searchMethod3">
										<option value="精确">精确</option>
										<option value="模糊">模糊</option>
								</select>
							</td>
							
						</tr>
            <tr>
                <td>
                    <a href="javascript:void(0)" id="btnSerach" class="easyui-linkbutton c1" style="width:70px">查询</a>
                </td>
            </tr>
        </table>
    </div>
    <table id="date" >  
    </table>
    </div>
</body>
</html>
