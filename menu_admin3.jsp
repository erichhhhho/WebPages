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
 							<h4 style="font-weight: bolder;">ϵͳ���ܲ˵�</h4>
 						</td>
 					</tr>
 				</table>
 				<div style="text-align:right;line-height:30px;">
 					<a href="logout.jsp" target="_parent" style="color:black; font-size: 15px font:����">�˳�</a>
 				</div>
 			</div>

 			<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
 				<div class="panel panel-default">
 					<div class="panel-heading" role="tab" id="headingOne" align="center">
 						<h4 class="panel-title"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
 							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" >
 								�û�����
 							</a>
 						</h4>
 					</div>
 					<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne" >
 						<ul class="list-group" align="center" style="padding: 0">
 							<li class="list-group-item" ><A href="jiaoshi_updt2.jsp" target="main" type="button" class="list-group-item">�޸ĸ�����Ϣ</A></li>
 							<li class="list-group-item" ><A href="mod3.jsp"
 								target=main type="button" class="list-group-item">�޸ĸ������� </A></li>
 							</ul>
 						</div>
 					</div>

 					<div class="panel panel-default">
 						<div class="panel-heading" role="tab" id="headingTwo" align="center">
 							<h4 class="panel-title"><span class="glyphicon glyphicon-signal" aria-hidden="true"></span>
 								<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo" >
 									�ɼ�����
 								</a>
 							</h4>
 						</div>
 						<div id="collapseTwo" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingTwo" >
 							<ul class="list-group" align="center" style="padding: 0">
 								<li class="list-group-item" ><A href="chengji_add.jsp" target="main" type="button" class="list-group-item">¼��ɼ�</A></li>
 								<li class="list-group-item" ><A href="chengji_list.jsp"
 									target=main type="button" class="list-group-item">����ɼ� </A></li>
 								</ul>
 							</div>
 						</div>

 						<div class="panel panel-default">
 							<div class="panel-heading" role="tab" id="headingThree" align="center">
 								<h4 class="panel-title"><span class="glyphicon glyphicon-education" aria-hidden="true"></span>
 									<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree" >
 										ѧ����������
 									</a>
 								</h4>
 							</div>
 							<div id="collapseThree" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingThree" >
 								<ul class="list-group" align="center" style="padding: 0">
 									<li class="list-group-item" ><A href="chengji_add.jsp" target="main" type="button" class="list-group-item">¼��ɼ�</A></li>
 									<li class="list-group-item" ><A href="mingdan_list.jsp"
 										target=main type="button" class="list-group-item">�鿴���� </A></li>
							<!--
								<li class="list-group-item" ><A href="chengji_list.jsp"
								target=main type="button" class="list-group-item">����ɼ� </A></li>
							-->
						</ul>
					</div>
				</div>

			</div>

		</td>
	</TABLE>
</BR>
</BODY>
