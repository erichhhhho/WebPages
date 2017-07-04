<%@ page language="java" contentType="text/html; charset=gb2312"
pageEncoding="gb2312"%>

	<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
		<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
			<td>
				<div>
					<table style="margin-left: auto; 
					margin-right: auto; ">
					<tr vAlign="center">
						<td><span class="glyphicon glyphicon-inbox" aria-hidden="true"></span></td>
						<td>
						<h4 style="font-weight: bolder;">系统功能菜单</h4>
						</td>
					</tr>
				</table>
				<div style="text-align:right;line-height:30px;">
					<a href="logout.jsp" target="_parent" style="color:black; font-size: 15px font:宋体">退出</a>
				</div>
			</div>

			<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne" align="center">
						<h4 class="panel-title"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" >
								用户管理
							</a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne" >
						<ul class="list-group" align="center" style="padding: 0">
							<li class="list-group-item" ><A href="mod2.jsp" target="main" type="button" class="list-group-item">查看个人信息</A></li>
							<li class="list-group-item" ><A href="mod.jsp"
								target=main type="button" class="list-group-item">修改个人密码 </A></li>
								<li class="list-group-item" ><A href="chengji_list3.jsp"
									target=main type="button" class="list-group-item">成绩查询</A></li>
								</ul>
							</div>
						</div>
					</div>

				</td>
			</TABLE>
		</BR>

	</BODY>


