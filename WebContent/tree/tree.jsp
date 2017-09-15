
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP '014_tree.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/common.css" />
	<script type="text/javascript" src="js/jquery-easyui-1.2.6/jquery-1.7.2.min.js"></script>
	<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.2.6/themes/default/easyui.css" />
	<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.2.6/themes/icon.css" />
	<script type="text/javascript" src="js/jquery-easyui-1.2.6/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/jquery-easyui-1.2.6/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript">
	//获取选中的节点
		function getChecked(){
			console.info($('#t1').tree('getChecked'));
		}
		$(function(){
			$('#t1').tree({
			//发送异步ajax请求, 还会携带一个id的参数 
				url:'tree-getNodes' ,
				dnd:true , 
				checkbox:true,
				lines:true,
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
		});

	</script>
</head>  
<body>
  	<ul id="t1"></ul>
  	 <input type="button" onclick="getChecked()" value="获取勾选的节点"/>	
</body>
</html>
