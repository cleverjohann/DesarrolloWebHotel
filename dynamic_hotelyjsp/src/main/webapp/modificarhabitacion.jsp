<!DOCTYPE html>
<%@page import="dao.daohabitacion"%>
<%@page import="dao.habitacion"%>
<html lang="en">
<%@ include file="..\paginas\similares\encabezado.jsp"%>
<style>
.button {
	display: inline-block;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	color: #ffffff;
	background-color: #7aa8b7;
	border-radius: 6px;
	outline: none;
	transition: 0.3s;
}

.button:hover {
	background-color: #c2c7c7;
}
</style>
<section class="ftco-section bg-light">
	<div class="container">
		<div class="row no-gutters">
			<div class="col-md-12">
				<div class="wrapper">
					<div class="row no-gutters">
						<div class="col-lg-8 col-md-7 d-flex align-items-stretch">
							<div class="contact-wrap w-100 p-md-5 p-4">
								<h3 class="mb-4">Continue con la modificación del registro
									de la habitacion</h3>
								<div id="form-message-warning" class="mb-4"></div>
								<%
								String operacion = request.getParameter("operacion");
								habitacion habitacion = null;
								if (operacion != null) {
									if (operacion.equals("SELECTBYID")) {
										int id = Integer.parseInt(request.getParameter("id"));

										habitacion = new habitacion();
										daohabitacion daohabitacion = new daohabitacion();
										habitacion = daohabitacion.obtenerporId(id);

										out.println(habitacion.getId());
										out.println(habitacion.getNum_habitacion());
										out.println(habitacion.getTipo_habitacion());
										out.println(habitacion.getCapacidad());
										out.println(habitacion.isDisponibilidad());
										out.println(habitacion.getPrecio());
									}
								}
								//DaoCurso dao = new DaoCurso();
								%>
								<form class="contactForm" method="post"
									action="listarhabitacion.jsp?operacion=UPDATE"
									class="appointment-form">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label class="label" for="id">ID</label> <input type=number
													class="form-control" name="idhabitacion" id="idhabitacion"
													value=<%out.println(habitacion.getId());%> min="0">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="label" for="numerohabitacion">Número
													de habitacion</label> <input type="text" class="form-control"
													name="numhabitacion" id="numhabitacion"
													value=<%out.println(habitacion.getNum_habitacion());%>>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="label" for="tipohabitacion">Tipo de
													habitacion</label> <input type=text class="form-control"
													name="tipohabitacion" id="tipohabitacion"
													value=<%out.println(habitacion.getTipo_habitacion());%>>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="label" for="capacidad">Capacidad de
													personas</label> <input type=number class="form-control"
													name="capacidadhab" id="capacidadhab"
													value=<%out.println(habitacion.getCapacidad());%> min="1"
													max="23">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="label" for="email">Precio</label> <input
													type=number class="form-control" name="preciohabitacion"
													id="preciohabitacion"
													value=<%out.println(habitacion.getPrecio());%> min="0.00"
													step="0.01">
											</div>
										</div>

										<!-- 
									"this.href='updateItem?codice=${item.key.codice}&quantita='+document.getElementById('qta_field').value" -->
										<div class="col-md-12">
											<div class="form-group">
												<input type="submit" value="Actualizar"
													class="btn btn-primary"
													onclick="
                               if (confirm('Desea modificar el cuarto de huesped'))
                                   form.action = 'listarhabitacion.jsp?operacion=UPDATE';
                               else
                                   return false;">

												<div class="submitting"></div>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>

						<div class="col-lg-4 col-md-5 d-flex align-items-stretch">
							<div class="info-wrap bg-primary w-100 p-md-5 p-4">
								<h3>Bienvenidos al proyecto de curso hotel del GRUPO UTP</h3>
								<p class="mb-4">
									Conocer mas sobre las habitaciones <a
										href="listarhabitacion.jsp" class="btn btn-secondary">Listarlos
										aqui</a>
								</p>
								<br>
								<div class="dbox w-100 d-flex align-items-start">
									<div
										class="icon d-flex align-items-center justify-content-center">
										<span class="fa fa-map-marker"></span>
									</div>
									<div class="text pl-3">
										<p>
											<span>Direccion:</span> Av. Portaroblenos 1001
										</p>
									</div>
								</div>
								<div class="dbox w-100 d-flex align-items-center">
									<div
										class="icon d-flex align-items-center justify-content-center">
										<span class="fa fa-phone"></span>
									</div>
									<div class="text pl-3">
										<p>
											<span>Celular:</span> <a href="#">+51969696969</a>
										</p>
									</div>
								</div>
								<div class="dbox w-100 d-flex align-items-center">
									<div
										class="icon d-flex align-items-center justify-content-center">
										<span class="fa fa-paper-plane"></span>
									</div>
									<div class="text pl-3">
										<p>
											<span>E-mail:</span> <a href="#">grupo@utp.edu.pe</a>
										</p>
									</div>
								</div>
								<div class="dbox w-100 d-flex align-items-center">
									<div
										class="icon d-flex align-items-center justify-content-center">
										<span class="fa fa-globe"></span>
									</div>
									<div class="text pl-3">
										<p>
											<span>Website</span> <a href="#">canvas.utp.edu.pe</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="..\paginas\similares\piedepagina.jsp"%>
</html>