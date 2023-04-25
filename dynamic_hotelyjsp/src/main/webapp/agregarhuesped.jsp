<!DOCTYPE html>
<html lang="en">
<%@ include file="..\paginas\similares\encabezado.jsp"%>
<section class="ftco-section bg-light">
	<div class="container">
		<div class="row no-gutters">
			<div class="col-md-12">
				<div class="wrapper">
					<div class="row no-gutters">
						<div class="col-lg-8 col-md-7 d-flex align-items-stretch">
							<div class="contact-wrap w-100 p-md-5 p-4">
								<h3 class="mb-4">Continue con su registro de habitacion</h3>
								<div id="form-message-warning" class="mb-4"></div>
								<form method="POST" id="contactForm" name="contactForm"
									class="contactForm">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label class="label" for="name">Número de habitacion</label>
												<input type="text" class="form-control" name="numhabitacion"
													id="numhabitacion" placeholder="#HABITACION">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="label" for="email">Tipo de habitacion</label>
												<input type=text class="form-control" name="tipohabitacion"
													id="tipohabitacion" placeholder="TIPO HABITACION">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="label" for="email">Capacidad de
													personas</label> <input type=number class="form-control"
													name="capacidadhab" id="capacidadhab" placeholder="#"
													min="1" max="23">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="label" for="email">Precio</label> <input
													type=number class="form-control" name="preciohabitacion"
													id="preciohabitacion" placeholder="S/0.00" min="0">
											</div>
										</div>

										<div class="col-md-12">
											<div class="form-group">
												<input type="submit" value="Registrar"
													class="btn btn-primary">
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
									Conocer mas sobre las habitaciones <a href="listarhabitacion.jsp"
										class="btn btn-secondary">Listarlos aqui</a>
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