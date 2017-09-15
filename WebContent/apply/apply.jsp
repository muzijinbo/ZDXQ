<%@ page language="java" contentType="text/html; charset=UTF-8"
	java.util.*,java.sql.*" %>
<%@ page errorPage="error.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    
    <link href="../css/themes/default/easyui.css" rel="stylesheet" />
    <link href="../css/themes/icon.css" rel="stylesheet" />
    <link href="../css/themes/color.css" rel="stylesheet" />
    <link href="../css/apply.css" rel="stylesheet" />
	 <script type="text/javascript" src="script/jquery.min.js"></script>
	  <script src="../scripts/apply.js"></script>
	  <script src="../scripts/sjld.js"></script>
	   <script src="../scripts/gmjj.js"></script>
	
 
  
    <title>河北省重大技术需求征集表</title>
 
  
</head>

<body>
				
    <div class="server">
    
        <h1 class="apply_title">河北省重大技术需求征集表</h1>
        <form action="AddXQ.jsp" method="post">
        <table class="table" align="center">       
            <tr>
                <td  class="Fxing">*机构全称：</td>
                <td colspan="2" class="input">
				<input type="hidden" value="<%=request.getParameter("u_id")%>" name="ID">
                <input class="Text"  id="Oname" type="text"  name="OName" value="<%=(String) session.getAttribute("OName") %>"/></td>
  					
                <td class="first">归口管理部门：</td>
                <td colspan="2" class="input">
                
					<select  name = "GK" id="GK" onchange="GK()" >
			
					 <option value=""></option> 
					
					</select >
                </td>
                
                
            </tr>
            <tr>
                <td class="first">*通讯地址：</td>
                <td colspan="2" class="input"><input class="Text"  type="text" name="Addr"  value="<%=(String) session.getAttribute("Addr") %>"required autofocus placeholder="" /></td>
                <td class="first">*所在地域：</td>
                <td colspan="2" class="input"><input class="Text"  type="text" name="Addrs" value="<%=(String) session.getAttribute("Addr") %>" required autofocus placeholder="" /></td>
                
            </tr>
            
            <tr>
                <td class="first">网   址：</td>
                <td colspan="2" class="input"><input type="text" name="NetAddr"  value="<%=(String) session.getAttribute("NetAddr") %>" required autofocus placeholder=""/></td>
                <td class="first">*电子信箱：</td>
                <td colspan="2" class="input"><input type="text" name="Email"  value="<%=(String) session.getAttribute("EMail") %>"  required autofocus placeholder="" /></td>
                
            </tr>
            <tr>
                <td class="first">*法人代表：</td>
                <td colspan="2" class="input"><input type="text" name="FName"   value="<%=(String) session.getAttribute("FName") %>" required autofocus placeholder=""/></td>
                <td class="first">邮政编码：</td>
                <td colspan="2" class="input"><input type="text" name="PCode"  value="<%=(String) session.getAttribute("PCode") %>"   /></td>
                
                
            </tr>
            <tr>
                <td class="Fxing" >*联系人：</td>
                <td colspan="2"  class="input"><input type="text" name="LinkMan" value="<%=(String) session.getAttribute("LinkMan") %>"  required autofocus placeholder="" /></td>
                
                <td class="Fxing">
                	*固定电话：
                	</td>
                <td colspan="2" >	
                	<input type="text" name="TelePhone" style="width: 100px;" value="<%=(String) session.getAttribute("TelePhone") %>"  required autofocus placeholder=""/>
            	</td>
            </tr>
            <tr>	
                	<td class="Fxing">
                		*手机：
                	</td>
                	<td colspan="2" >
                		<input type="text" name="Phone" style="width: 100px;" value="<%=(String) session.getAttribute("Phone") %>" />
                	</td>
                
                    <td class="first">传真：</td>
                    <td colspan="2" class="input"><input type="text" name="Fax"  value="<%=(String) session.getAttribute("Fax") %>"  /></td>
             
                
            </tr>
            <tr>
                <td class="first">*机构属性：</td>
          
                <td colspan="5" class="Text">
        			
                	<input class="R"type="radio" name="OType" value="企业" >企业
                	<input class="R"type="radio" name="OType" value="高等院校">高等院校
                	<input class="R"type="radio" name="OType" value="研究机构">研究机构
                	<input class="R"type="radio" name="OType" value="其它">其它
                    
                </td>
        
            </tr>
            
            
            <tr>
                <td class="second" style="height:150px;" colspan="6">
                	*机构简介（单位基本情况，研究基础等，<span class="xing">限500字以内</span>）<br>
                   <textarea name="OIntroduce" rows="6" cols="131" style="resize:none;"  ></textarea>
                </td>
                    
            </tr>
            
            
			<tr>
                <td class="first">*技术需求名称：</td>
                <td colspan="2" class="input"><input class="Text"  type="text" name="NName" required autofocus /></td>
                 <td class="first">需求时限：</td>
                 <td>
                 <input class="" type="text" name="TimeMin" style="width: 70px"required autofocus />年&nbsp;&ndash;至
                 <input class="" type="text" name="TimeMax"style="width: 70px"required autofocus />年
                 </td>
                 
            </tr>
            <tr>
                <td class="second" style="height:500px;" colspan="6">
                	重大技术需求概述<br>
                	1.主要问题（需要解决的重大技术问题，<span class="xing">限500字以内</span>）<br>
                	<textarea name="Problem" rows="7" cols="131" style="resize:none;" ></textarea><br>
                	2.技术关键（所需的关键技术，主要指标，<span class="xing">限500字以内</span>）<br>
                	 <textarea name="Key" rows="7" cols="131" style="resize:none;"></textarea><br>
                	3.预期目标（技术创新型，经济社会效益 ，<span class="xing">限500字以内</span>）<br>               
                   <textarea name="Target" rows="7" cols="131" style="resize:none;"></textarea><br>
                  <br> &nbsp;&nbsp;&nbsp;&nbsp;关键字：
						<input class="TextKey"  type="text" id="TK1"  name="Key1" onchange="TK1()"/>
						<input class="TextKey"  type="text" id="TK2" name="Key2" onchange="TK2()"/>
						<input class="TextKey"  type="text" id="TK3"  name="Key3" onchange="TK3()"/>
						<input class="TextKey"  type="text" id="TK4" name="Key4"  onchange="TK4()"/>
						<input class="TextKey"  type="text" id="TK5" name="Key5"  onchange="TK5()"/>
               
                </td>
                    
            </tr>
            <tr>
            <td class="Fxing">拟投入资金总额</td>
            <td colspan="5"><input style="width: 600px" name="Money"/>万元</td>
            </tr>
           <tr>
                <td class="first"rowspan="2">技术需求&nbsp;&nbsp;&nbsp;<br>解决方式：</td>
                <td colspan="5" class="input">
                	<input class="R" type="radio" name="SType" value="独立开发">独立开发
                	<input class="R" type="radio" name="SType" value="技术入股"> 委托研发
                	<input class="R" type="radio" name="SType" value="合作开发"> 合作研发
                	<input class="R" type="radio" name="SType" value="其它"> 其它
                	
                	
                </td>
                  
            </tr>
            <tr>
                
                <td colspan="5" class="input">合作意向单位：
                	<input class="Text"  type="text" name="OTarget" value="" />（选填）
                </td>
                
            </tr>
          <tr>
         
                <td class="first">*科技活动类型：</td>
                <td colspan="5" class="input">
                	
                	<input class="R" type="radio" name="yjlx" id="yjlx" value="基础研究" onchange="my()">基础研究
                	<input class="R" type="radio" name="yjlx" value="应用研究" onchange="my()">应用研究
                	<input class="R" type="radio" name="yjlx" value="研究与试验发展成果应用 " onchange="my()">研究与试验发展成果应用 
                	<br>
                	<input class="R" type="radio" name="yjlx" value="技术推广与科技服务"onchange="my()">技术推广与科技服务&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                	<input class="R" type="radio" name="yjlx" value="生产性活动"onchange="my()">生产性活动
             
                	
                </td>
                
          </tr>
         
           <tr>
                <td class="first">学科分类：<br>(限基础研究填写)</td>
                <td colspan="5" class="input">
             
				<select id="yiji" onchange="a(this)">
					<c:forEach var="pv" items="${maps}">
						<option value="${pv.code1 }">${pv.Title }</option>
					</c:forEach>
				</select> 
				<select id="erji" onchange="b(this)"></select>
				<select id="sanji" name="xkfl"></select>

                </td>
                
            </tr> 
            <tr>
                <td class="first">需求技术所属领域：（非基础研究填写）</td>
                <td colspan="5" class="input">
             
                	<input class="R" type="checkbox"  name="ly" id="ly1" value="电子信息技术" >&nbsp;电子信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                	<input class="R" type="checkbox" name="ly" id="ly2" value="光电一体化"> 光机电一体化 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                	<input class="R" type="checkbox" name="ly" id="ly3" value="生物制药技术"> 生物技术与制药
                	<input class="R" type="checkbox" name="ly" id="ly4" value="新材料及应用技术"> 新材料及应用
                	<br>
                	<input class="R" type="checkbox" name="ly" id="ly5" value="现代农业技术"> 现代农业技术
                	<input class="R" type="checkbox" name="ly" id="ly6" value="新能源与高效节能技术"> 新能源与高效节能技术
                	<input class="R" type="checkbox" name="ly" id="ly7" value="资源与环境"> 资源与环境&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                	<input class="R" type="checkbox" name="ly" id="ly8"  value="高技术服务业">高技术服务业
                	<br>
                	<input class="R" type="checkbox" name="ly" id="ly9" value="海洋"> 海洋&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                	<input class="R" type="checkbox" name="ly" id="ly10" value="社会公共事业"> 社会公共事业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                	<input class="R" type="checkbox" name="ly"  id="ly11" value="医疗卫生"> 医疗卫生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                	<input class="R" type="checkbox" name="ly" id="ly12" value="其它技术"> 其他技术（注明）
                </td>
                  
            </tr>
            
            <tr>
                <td class="first" >需求技术&nbsp;&nbsp;&nbsp;<br>应用行业：</td>
                 <td colspan="5" class="input">
                	<!-- <input  type="text" id="yyhy" name="YYHY" required autofocus placeholder="参见国民经济行业分类，非基础研究填写" />
                	 -->
                	 
	
			        <select id="gmyiji" onchange="gma(this)">
						<c:forEach var="gmpv" items="${gmaps}">
							<option value="${gmpv.code1 }">${gmpv.Title }</option>
						</c:forEach>
					</select> 
					<select id="gmerji" onchange="gmb(this)"></select>
			        <select id="gmsanji"name="yyhy"></select> 
                </td> 
                
            </tr>
            <tr>
                <td class="secend" style="height:60px;" colspan="6">
                   
                </td>
            </tr>
           <tr>
                <td colspan="6" style="height:40px;">
                	<input type="submit" class="easyui-linkbutton c1" style="width:50px;" value="保存">
                    
                </td>
            </tr>                
	</table>
	</form>
    </div>
</body>

</html>