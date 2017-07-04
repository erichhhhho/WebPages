	<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">


		<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
			<td>

			<div>
					<table style="margin-left: auto; 
					margin-right: auto; ">
					<tr vAlign="center">
						<td><span class="glyphicon glyphicon-inbox" aria-hidden="true"></span></td>
						<td><h4 style="font-weight: bolder;">系统功能菜单</h4>

						</td>

					</tr>
				</table>
				<div style="text-align:right;line-height:30px;">
					<a href="logout.jsp" target="_parent" style="color:	#484848; font-size: 15px">退出</a>
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
							<li class="list-group-item" ><A href="yhzhgl.jsp" target="main" type="button" class="list-group-item">
								系统管理员管理 </A></li>
								<li class="list-group-item" ><A href="mod.jsp"
									target=main type="button" class="list-group-item">修改个人密码 </A></li>

								</ul>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingTwo"  align="center">
								<h4 class="panel-title"><span class="glyphicon glyphicon-object-align-bottom" aria-hidden="true"></span>
									<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
										教师管理
									</a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
								<ul class="list-group" align=center>
									<li class="list-group-item" >
										<A href="jiaoshi_add.jsp" target=main type="button" class="list-group-item">教师添加</A></li>
										<li class="list-group-item" ><A href="jiaoshi_list.jsp" target=main type="button" class="list-group-item">教师管理</A></li>

									</ul>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree"  align="center">
									<h4 class="panel-title"><span class="glyphicon glyphicon-education" aria-hidden="true"></span>
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
											学生管理
										</a>
									</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingThree">
									<ul class="list-group" align=center>
										<li class="list-group-item" ><A href="xuesheng_add.jsp" target=main type="button" class="list-group-item">添加学生</A></li>
										<li class="list-group-item" ><A href="xuesheng_list.jsp" target=main type="button" class="list-group-item">管理学生</A></li>
									</ul>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingFour"  align="center">
									<h4 class="panel-title"><span class="glyphicon glyphicon-blackboard" aria-hidden="true"></span>
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
											课程管理
										</a>
									</h4>
								</div>
								<div id="collapseFour" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingFour">
									<ul class="list-group" align=center>
										<li class="list-group-item" ><A href="kecheng_add.jsp" target=main type="button" class="list-group-item">添加课程</A></li>
										<li class="list-group-item" ><A href="kecheng_list.jsp" target=main type="button" class="list-group-item">管理课程</A></li>

									</ul>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingFive"  align="center">
									<h4 class="panel-title"><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span>
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
											教学班管理
										</a>
									</h4>
								</div>
								<div id="collapseFive" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingFive">
									<ul class="list-group" align=center>
										<li class="list-group-item" > <A href="jiaoxueban_add.jsp" target=main type="button" class="list-group-item">添加教学班</A></li>
										<li class="list-group-item" ><A href="jiaoxueban_list.jsp" target=main type="button" class="list-group-item">管理教学班</A></li>

									</ul>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingSix"  align="center">
									<h4 class="panel-title"><span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
											学生分班管理
										</a>
									</h4>
								</div>
								<div id="collapseSix" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingSix">
									<ul class="list-group" align=center>
										<li class="list-group-item" ><A href="fenban_add.jsp" target=main type="button" class="list-group-item">添加分班</A></li>
										<li class="list-group-item" ><A href="fenban_list.jsp" target=main type="button" class="list-group-item">管理分班</A></li>

									</ul>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingSeven"  align="center">
									<h4 class="panel-title"><span class="glyphicon glyphicon-signal" aria-hidden="true"></span>
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
											成绩单管理
										</a>
									</h4>
								</div>
								<div id="collapseSeven" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingSeven">
									<ul class="list-group" align=center>
										<li class="list-group-item" ><A href="xuefen_compute.jsp" target=main type="button" class="list-group-item">计算学生学分</A>
											<li class="list-group-item" ><A href="jidian_compute.jsp" target=main type="button" class="list-group-item">计算学生绩点</A></li>
											<li class="list-group-item" ><A href="chengji_output.jsp" target=main type="button" class="list-group-item">输出学生成绩单</A></li>
											<li class="list-group-item" ><A href="huizong_output.jsp" target=main type="button" class="list-group-item">输出汇总表</A></li>

										</ul>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingEight"  align="center">
										<h4 class="panel-title"><span class="glyphicon glyphicon-cloud" aria-hidden="true"></span>
											<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
												系统数据管理
											</a>
										</h4>
									</div>
									<div id="collapseEight" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingEight">
										<ul class="list-group" align=center>
											<li class="list-group-item" ><A href="shuju_output.jsp" target=main type="button" class="list-group-item">导出系统数据</A></li>
											<li class="list-group-item" ><A href="shuju_input.jsp" target=main type="button" class="list-group-item">导入系统数据</A></li>

										</ul>
									</div>
								</div>
							</div>

						</td>

					</TABLE>


				</BR>