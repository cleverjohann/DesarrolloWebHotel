<!DOCTYPE html>
<html lang="en">
<jsp:directive.include file="..\paginas\similares\encabezado.jsp" />

<style>
table tr:not(:first-child):hover {
	background-color: #eee;
}
</style>
<body>

<section class="ftco-section bg-light">
	<div class="container">
		<div class="row no-gutters">
			<div class="col-md-12">
				<div class="wrapper">
					<div class="row no-gutters">
						<div class="col-lg-8 col-md-7 d-flex align-items-stretch">
							<div class="contact-wrap w-100 p-md-5 p-4">
								<h3 class="mb-4">Continue con su registro</h3>
								<div id="form-message-warning" class="mb-4"></div>
								<div id="form-message-success" class="mb-4">Registro
									realizado!</div>
								<form method="POST" id="contactForm" name="contactForm"
									class="contactForm">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label class="label" for="name">Nombres y Apellidos</label>
												<input type="text" class="form-control" name="name"
													id="name" placeholder="Name">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="label" for="email">Correo Electrónico</label>
												<input type="email" class="form-control" name="email"
													id="email" placeholder="Email">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="label" for="email">Día de registro</label> <input
													type="email" class="form-control" name="email" id="email"
													placeholder="Email">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="label" for="email">Día final</label> <input
													type="email" class="form-control" name="email" id="email"
													placeholder="Email">
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="subject">Subject</label> <input
													type="text" class="form-control" name="subject"
													id="subject" placeholder="Subject">
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label class="label" for="#">Comentarios</label>
												<textarea name="message" class="form-control" id="message"
													cols="30" rows="4" placeholder="Message"></textarea>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<input type="submit" value="Send Message"
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
									Conocer más sobre los registros <a
										href="./paginas/listarregistros.jsp" class="btn btn-secondary">Listarlos
										aquí</a>
								</p>
								<br>
								<div class="dbox w-100 d-flex align-items-start">
									<div
										class="icon d-flex align-items-center justify-content-center">
										<span class="fa fa-map-marker"></span>
									</div>
									<div class="text pl-3">
										<p>
											<span>Dirección:</span> Av. Portaroblenos 1001
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


<%@ include file="similares\piedepagina.jsp"%>
</body>

</html>
