<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>河北重大需求征集系统</title>
    <link href="../css/index.css" rel="stylesheet" />
    <link href="../css/themes/default/easyui.css" rel="stylesheet" />
    <link href="../css/themes/icon.css" rel="stylesheet" />
    <link href="../css/demo.css" rel="stylesheet" />
    <script src="../scripts/jquery.min.js"></script>
    <script src="../scripts/jquery.easyui.min.js"></script>
    <script>
        $(function () {        	
            bindEvent();
        });
        function getQueryString(name) {
        	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
        	var r = window.location.search.substr(1).match(reg);
        	if (r != null)
            	 return unescape(r[2]); 
        	return null;
        }
        function bindEvent() {
        	var u_id=getQueryString("u_id");
        	
        	 $.ajax({
    			type : "post",
    			url : "../user-getIdentity",
    			data : {
    				"u_id" : u_id
    			},
    			success : 
        			function(data) 
        			{
	    				var jdata = eval("(" + data + ")");
	    				//alert(jdata.limitofadd);
	    				if(jdata.limitofadd){
	    					$('#layout_west_accordion').accordion('add', {
	    		            	title: '填写需求',
	    		            	content: '<ul class="easyui-tree"><li><div ><a href="javascript:;" class="btn_menu"  url="../need-input?u_id=' + u_id + '" >' + "添加需求" + '</a></div></li></ul>',
	    		            	selected: false,
	    		            	iconCls:'icon-save'	
	    		            });
	        			}
	    				if(jdata.limitofedit){
	    					$('#layout_west_accordion').accordion('add', {
	    		            	title: '权限管理',
	    		            	content: '<ul class="easyui-tree"><li><div ><a  href="javascript:;" class="btn_menu"  url="../identity-list"  >' + "权限管理" + '</a></div></li></ul>',
	    		            	selected: false,
	    		            	iconCls:'icon-edit'	
	    		            });
						}
	    				if(jdata.limitofdelete){
	    					$('#layout_west_accordion').accordion('add', {
	    		            	title: '用户浏览',
	    		            	content: '<ul class="easyui-tree"><li><div ><a  href="javascript:;" class="btn_menu"  url="../identity-list"  >' + "权限管理" + '</a></div></li></ul>',
	    		            	selected: false,
	    		            	iconCls:'icon-filter'	
	    		            });
						} 
	    				if(jdata.limitofaudit1){
	    					$('#layout_west_accordion').accordion('add', {
	    		            	title: '形式审核',
	    		            	content: '<ul class="easyui-tree"><li><div ><a  href="javascript:;" class="btn_menu"  url="../identity-list"  >' + "权限管理" + '</a></div></li></ul>',
	    		            	selected: false,
	    		            	iconCls:'icon-edit'	
	    		            });
						}
	    				if(jdata.limitofaudit1){
	    					$('#layout_west_accordion').accordion('add', {
	    		            	title: '部门审核',
	    		            	content: '<ul class="easyui-tree"><li><div ><a  href="javascript:;" class="btn_menu"  url="../identity-list"  >' + "权限管理" + '</a></div></li></ul>',
	    		            	selected: false,
	    		            	iconCls:'icon-edit'	
	    		            });
						} 
	    				if(jdata.limitofcheckall){
	    					$('#layout_west_accordion').accordion('add', {
	    		            	title: '统计查询',
	    		            	content: '<ul class="easyui-tree"><li><div ><a  href="javascript:;" class="btn_menu"  url="../list/listUser.jsp?ID= ' + u_id +' "  >' + "统计查询" + '</a></div></li></ul>',
	    		            	selected: false,
	    		            	iconCls:'icon-search'	
	    		            });
						} 
	    				$('#layout_west_accordion').accordion('add', {
    		            	title: '帮助文件',
    		            	content: '<ul class="easyui-tree"><li><div ><a  href="javascript:;" class="btn_menu"  url="../identity-list"  >' + "权限管理" + '</a></div></li></ul>',
    		            	selected: false,
    		            	iconCls:'icon-help'	
    		            });
	    				$('#layout_west_accordion').accordion('add', {
    		            	title: '修改密码',
    		            	content: '<ul class="easyui-tree"><li><div ><a  href="javascript:;" class="btn_menu"  url="../identity-list"  >' + "权限管理" + '</a></div></li></ul>',
    		            	selected: false,
    		            	iconCls:'icon-tip'	
    		            });
	    				$(".btn_menu").click(function (){
	    					var title = $(this).text();
	    				    var url = $(this).attr("url");
	    				    var isSelect = $("#container").tabs('exists', title);
	    				    if (isSelect) {
	    				    	$("#container").tabs('select', title);
	    				        	return;
	    				        }
	    				        $("#container").tabs('add', {
	    				        	title: title,
	    				            content: CreateContent(url),
	    				            closable: true
	    		                });
	    				}); 		
    				}
					
    		}); 
        }
        function CreateContent(url) {
        	//alert(url);
            var strHtml = '<iframe src="' + url + '" scrolling="yes" frameborder="0" fit="true" style="height:100%;width:100%;"></iframe>';
            return strHtml;
        }
    </script>    
</head>
<body>
		
    <div id="layout_div" class="easyui-layout" >
    
        <div data-options="region:'north',border:false" style="overflow:hidden; height:70px;background:#338FCC;padding:10px;padding-left:30px;">
            <div style="float:left; height:70px;">
                <img src="images/logo_1.png" height="60" style="margin-top:-10px;" />
            </div>
            <div style="color:#fff  ;font-size:3em; float:left;margin-left:30px;">
              河北省重大技术需求调查系统
            </div>
            <div style="float:right;height:70px; margin-right:50px;">
                <span>您好，User！<%= request.getParameter("u_id") %>
                	<input id="hu_id" type="text" value="<%= request.getParameter("u_id") %>"/>
                </span>
                <span><a href="/ZDXQSSH/loginPage/loginJ.html">注销</a></span>
            </div>
        </div>
        <div data-options="region:'west',split:false,title:'菜单',collapsible:false" style="width:170px;">
            <div id="layout_west_accordion" class="easyui-accordion" fit="true">
                <!-- a标签url属性中填写（/控制器名称/视图名称） -->
              <%--  <div  id="xqzj" title="需求征集" data-options="iconCls:'icon-print'" style="display: none overflow:auto;padding:10px;">               
                    <ul class="easyui-tree">     
                    <%String ID = request.getParameter("u_id");		
					//System.out.println(ID+"userIndex界面");
                        out.print("<li><a class='btn_menu' url='../apply/apply.jsp?ID=" + ID + "'>填写需求</a></li>");                     
                      %>
                      
                    </ul>
                </div>
                <div title="需求管理" data-options="iconCls:'icon-redo'" style="overflow:auto;padding:10px;">
                    <ul class="easyui-tree">
                        <%
                        out.print("<li><a href='javascript:;'class='btn_menu'url='../list/listUser.jsp?ID=" + ID + "'>浏览需求</a></li>");
                        %>
                    </ul>
                </div> --%>
                <!-- <div title="帮助文件" data-options="iconCls:'icon-help'" style="overflow:auto;padding:10px;">
                    <ul class="easyui-tree">
                        <li><a href="javascript:;" url="reply.html">帮助文件</a></li>
                        
                    </ul>
                </div>
                <div title="修改密码" data-options="iconCls:'icon-tip'" style="overflow:auto;padding:10px;">
                    <ul class="easyui-tree">
                        <li><a href="javascript:;" class="btn_menu" url="changePassword.html">修改密码</a></li>
                    </ul>
                </div>   -->
                <div title="需求管理" data-options="iconCls:'icon-redo'" style="overflow:auto;padding:10px;">
                    <ul class="easyui-tree">
                        <%
                        out.print("<li><a href='javascript:;'class='btn_menu'url='../list/listUser.jsp?ID=" +  request.getParameter("u_id") + "'>浏览需求</a></li>");
                        %>
                    </ul>
                </div> 
            </div> 
        </div>
        <div data-options="region:'south',border:false" style="height:50px; font-size:15px; color:#fff; background:#338FCC;padding:10px; text-align:center">
          	 业务咨询：0311-85813216 &nbsp;&nbsp;&nbsp;   技术服务：（咨询王老师）
        </div>
        <div data-options="region:'center'" style="overflow:hidden ">
            <div class="easyui-tabs" fit="true" id="container"  >
                <div title="主页" style="padding:10px">
                    欢迎使用
                    <!--<iframe src="/list.html" scrolling="no" frameborder="0" height="1000" width="1100" style="overflow:hidden; margin-bottom:10px;"></iframe>-->
                </div>
            </div>
        </div>
    </div>
</body>

</html>
