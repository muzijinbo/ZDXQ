<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>河北重大需求征集系统</title>
    <link href="css/index.css" rel="stylesheet" />
    <link href="css/themes/default/easyui.css" rel="stylesheet" />
    <link href="css/themes/icon.css" rel="stylesheet" />
    <link href="css/demo.css" rel="stylesheet" />
    <script src="scripts/jquery.min.js"></script>
    <script src="scripts/jquery.easyui.min.js"></script>
</head>


<body>
	<div id="lay" class="easyui-layout" style="width:1050px;height:1000px" >
	
		<div region="north" title="用户查询"  style="height:1000px;text-align:center;"  >
		        <form id="sec" >
		        	<table id="conditionTable1" style="margin:auto;">
			           
						<tr>
							<td>	
								<a id="addCondition" class="icon-add" style="display:block;  href="javascript:void(0);">+</a>
							</td>
							<td>
								<a id="delCondition" class="icon-remove" style="display:block; href="javascript:void(0);">---</a>				
							</td>
						</tr>
						<tr id="1">
							<td>
								<select name="condition1" id="conditionName1" style="width:200px;" class="easyui-combobox">
											<option value="0,机构全称">机构全称</option>
											<option value="0,归口管理部门">归口管理部门</option>
											<option value="0,所在地域">所在地域</option>
											<option value="0,法人代表">法人代表</option>
											<option value="0,联系人">联系人</option>
											<option value="0,机构属性">机构属性</option>
											<option value="0,技术需求名称">技术需求名称</option>
											<option value="0,技术需求所属领域">技术需求所属领域</option>

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
								<select name="condition1" id="conditionName1" style="width:200px;" class="easyui-combobox">
											<option value="0,机构全称">机构全称</option>
											<option value="0,归口管理部门"selected="selected">归口管理部门</option>
											<option value="0,所在地域">所在地域</option>
											<option value="0,法人代表">法人代表</option>
											<option value="0,联系人">联系人</option>
											<option value="0,机构属性">机构属性</option>
											<option value="0,技术需求名称">技术需求名称</option>
											<option value="0,技术需求所属领域" >技术需求所属领域</option>

								</select>&nbsp;&nbsp;
								
								<select name="bm" style="width:200px;" class="easyui-combobox" id="bm">                   
									<option value="1">办公室</option>
									<option value="2">人事处</option>
									<option value="3">机关党委</option>
									<option value="4">政策法规处</option>
									<option value="5">计划财务处</option>
									<option value="6">平台与基础处</option>
									<option value="7">国际合作处</option>
									<option value="8">高新技术处</option>
									<option value="9">农村科技处</option>
									<option value="10">社会发展处</option>
									<option value="11">成果与市场处</option>
									<option value="12">监察室</option>
									<option value="13">离退休干部处</option>
									<option value="14">知识产权局</option>
									<option value="15">半干旱中心</option>
									<option value="16">山办</option>
									<option value="17">机关服务中心</option>
									<option value="18">科技研发中心</option>
									<option value="19">科技情报研究院</option>
									<option value="20">器材中心</option>
									<option value="21">基金办</option>
									<option value="22">档案馆</option>
									<option value="23">科技管理信息中心</option>
									<option value="24">科技投资中心</option>
									<option value="25">成果转换中心</option>
									<option value="26">中小企业创新资金转换中心</option>
								</select>&nbsp;  
								<select  class="easyui-combobox" style="width:100px;"
										name="searchMethod1" id="searchMethod1">
										<option value="精确">精确</option>
										<option value="模糊">模糊</option>
								</select>
							</td>
							
						</tr>
						<tr id="3">
							<td>
								<select name="condition1" id="conditionName1" style="width:200px;" class="easyui-combobox">
											<option value="0,机构全称">机构全称</option>
											<option value="0,归口管理部门">归口管理部门</option>
											<option value="0,所在地域" selected="selected">所在地域</option>
											<option value="0,法人代表">法人代表</option>
											<option value="0,联系人">联系人</option>
											<option value="0,机构属性">机构属性</option>
											<option value="0,技术需求名称">技术需求名称</option>
											<option value="0,技术需求所属领域">技术需求所属领域</option>

								</select>&nbsp;&nbsp;
								
								<input type="text" id="conditionValue1" style="width:200px;" class="easyui-textbox">&nbsp;
								<select  class="easyui-combobox" style="width:100px;"
										name="searchMethod1" id="searchMethod1">
										<option value="精确">精确</option>
										<option value="模糊">模糊</option>
								</select>
							</td>
							
						</tr>
						
		            </table>      
		        </form>
		</div>
    </div>  
</body>
<script type="text/javascript">
$(function() {
	
	$("#2").hide();
	$("#3").hide();
});
	var rowIndex = 1;
	$("#addCondition").click(
			function() {
				//alert("按钮已点击");
				//克隆第一行并将其追加到表格的尾部
				//$("tr:eq(1)").clone().appendTo("#conditionTable");
				//点击的次数是奇数就在左边的表添加一行
				if (rowIndex >2) {
					alert("最多可添加3个查询条件");
				} else {		
					rowIndex++;
					
					$("#"+rowIndex).show();
				}
	});
	$("#delCondition").click(function() {
		//最少要保留前两行
		//alert(rowIndex);
		if (rowIndex > 1) {
			$("#" + (rowIndex - 1)).hide();
			rowIndex--;
		} else {
			alert("至少保留1个查询条件");
		}
	});
</script>
</html>