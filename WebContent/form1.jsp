
<%@ page language="java" contentType="charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="content-block_st" id="form1">



	<div class="container">



		<div class="row">

			<div class="col s12 ">
				<div class="caption left-align light green-text text-lighten-2">
					<h3 class="thin">Contactanos</h3>

					<br>
				</div>
				<div class="caption left-align light black-text text-lighten-1">

				</div>

			</div>


			<div class="row" id="form_contact_ini">

				<div class="col s12">
					<div class="card horizontal">
						<div class="card-image">
							<img src="img/mensaje_enviando.png">
						</div>
						<div class="card-stacked">
							<div class="card-content">




								<div id="form_contactenos" style="display: block;">
									<form class="col s12" id="form1">

										<div class="row">
											<div class="input-field col s12">
												<i class="material-icons prefix">account_circle</i> <input
													id="nombre" type="text" class="validate" name="nombre">
												<label for="icon_prefix">Nombre:</label>
											</div>




											<div class="input-field col s12">
												<i class="material-icons prefix">email</i> <input id="email"
													type="email" class="validate" name="email"> <label
													for="email">Email</label>
											</div>
										</div>



										<div class="row">
											<div class="input-field col s12">
												<i class="material-icons prefix">mode_edit</i>
												<textarea id="textarea2" class="materialize-textarea"
													data-length="120" name="textarea2"></textarea>
												<label for="textarea2">Dejanos un comentario</label>
											</div>
										</div>

										<!--  <input type="button" id="submit" value="EnviarR" onclick="loadXMLDoc()" />  -->
										<button type="button" id="submit"
											class="btn waves-effect waves-light" onclick="loadXMLDoc()">
											Enviar <i class="material-icons right">send</i>
										</button>
										<!--    <button class="btn waves-effect waves-light" id="submit" name="action" ">Enviar-->
    <!--  <i class="material-icons right">send</i>-->
  <!--</button>-->


									</form>



								</div>


								<div id="form_error" style="display: none;">
									<div class="row">
										<div class="input-field col s12">
											<div class="card-panel red lighten-4">

												<span class="red-text text-darken-2 thin"> Se deben
													diligenciar todos los campos !</span>
											</div>
										</div>
									</div>
								</div>










								<div class="progress" id="time_out" style="display: none;">

									<div class="indeterminate"></div>
								</div>


							</div>
						</div>
					</div>
				</div>





			</div>




			<div class="row" style="display: none;" id="resp_mail_img">
				<div class="col s12">
					<div class="card horizontal">
						<div class="card-image">
							<img src="img/mensaje_recibido.png">
							<!--   <span class="card-title">Mensaje Recibido !</span> -->
						</div>
						<div class="card-stacked">
							<div class="card-content">

								<div class="card-panel blue lighten-3">

									<span class="black-text text-darken-2 thin">
										<div id="resp_mail"></div>
									</span>
								</div>



							</div>
						</div>
					</div>
				</div>


			</div>



		</div>


	</div>


</div>