<!DOCTYPE html>
<%@page import="DAO.Dao"%>
<%@page import="java.sql.Connection"%>

<html lang="en">

<%@ include file="..\paginas\similares\header.jsp"%>

<div class="hero-wrap js-fullheight"
	style="background-image: url('images/bg_1.jpg');"
	data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text js-fullheight align-items-center justify-content-start"
			data-scrollax-parent="true">
			<div class="col-md-7 ftco-animate">
				<h2 class="subheading">Bienvenidos al hotel del GRUPO UTP</h2>
				<h1 class="mb-4">Vacacione con nosotros</h1>
				<p>
					<a href="#" class="btn btn-primary">Conocer más</a> <a href="#"
						class="btn btn-white">Contáctenos</a>
				</p>
			</div>
		</div>
	</div>
</div>

<section class="ftco-section ftco-book ftco-no-pt ftco-no-pb">
	<div class="container">
		<div class="row justify-content-end">
			<div class="col-lg-4">
				<form method="post" action="huesped.jsp" class="appointment-form">
					<h3 class="mb-3">Agende su cuarto</h3>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Nombres"
									id="nombre" name="nombre" required>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Apellido Paterno" id="apepaterno"
									name="apepaterno" required>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Apellido Materno" id="apematerno"
									name="apematerno" required>
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="DNI"
									id="dni" name="dni" required>
							</div>
						</div>


						<div class="col-md-12 ">
							<div class="form-group">
								<input type="submit" value="Programe su registro"
									class="btn btn-primary py-3 px-4">
							</div>
						</div>
					</div>
				</form>
				<h6>
					<%
					Dao con = new Dao();

					Connection cnx = con.crearCnx();

					out.print(cnx);
					%>
				</h6>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section ftco-services">
	<div class="container">
		<div class="row">
			<div
				class="col-md-4 d-flex services align-self-stretch px-4 ftco-animate">
				<div class="d-block services-wrap text-center">
					<div class="img"
						style="background-image: url(images/services-1.jpg);"></div>
					<div class="media-body py-4 px-3">
						<h3 class="heading">Dirección</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Mauris id neque porttitor, eleifend ipsum at, fringilla tortor.</p>
						<p>
							<a href="#" class="btn btn-primary">Quiero saber más</a>
						</p>
					</div>
				</div>
			</div>
			<div
				class="col-md-4 d-flex services align-self-stretch px-4 ftco-animate">
				<div class="d-block services-wrap text-center">
					<div class="img"
						style="background-image: url(images/services-2.jpg);"></div>
					<div class="media-body py-4 px-3">
						<h3 class="heading">Servicios Cómodos</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Mauris id neque porttitor, eleifend ipsum at, fringilla tortor.</p>
						<p>
							<a href="#" class="btn btn-primary">Quiero saber más</a>
						</p>
					</div>
				</div>
			</div>
			<div
				class="col-md-4 d-flex services align-self-stretch px-4 ftco-animate">
				<div class="d-block services-wrap text-center">
					<div class="img"
						style="background-image: url(images/services-3.jpg);"></div>
					<div class="media-body py-4 px-3">
						<h3 class="heading">Grata experiencia</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Mauris id neque porttitor, eleifend ipsum at, fringilla tortor.</p>
						<p>
							<a href="#" class="btn btn-primary">Quiero saber más</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section bg-light">
	<div class="container-fluid px-md-0">
		<div class="row no-gutters justify-content-center pb-5 mb-3">
			<div class="col-md-7 heading-section text-center ftco-animate">
				<h2>Tipos de hospedaje</h2>
			</div>
		</div>
		<div class="row no-gutters">
			<div class="col-lg-6">
				<div class="room-wrap d-md-flex">
					<a href="#" class="img"
						style="background-image: url(images/room-1.jpg);"></a>
					<div class="half left-arrow d-flex align-items-center">
						<div class="text p-4 p-xl-5 text-center">
							<p class="star mb-0">
								<span class="fa fa-star"></span><span class="fa fa-star"></span><span
									class="fa fa-star"></span><span class="fa fa-star"></span><span
									class="fa fa-star"></span>
							</p>
							<!-- <p class="mb-0"><span class="price mr-1">$120.00</span> <span class="per">per night</span></p> -->
							<h3 class="mb-3">
								<a href="rooms.html">Cuarto Suite</a>
							</h3>
							<ul class="list-accomodation">
								<li><span>Máximo:</span> 3 Personas</li>
								<li><span>Tamaño:</span> 45 metros2</li>
								<li><span>Vista:</span> Vista a chacras</li>
								<li><span>Cama:</span> 1</li>
							</ul>
							<p class="pt-1">
								<a href="room-single.html" class="btn-custom px-3 py-2">View
									Room Details <span class="icon-long-arrow-right"></span>
								</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="room-wrap d-md-flex">
					<a href="#" class="img"
						style="background-image: url(images/room-2.jpg);"></a>
					<div class="half left-arrow d-flex align-items-center">
						<div class="text p-4 p-xl-5 text-center">
							<p class="star mb-0">
								<span class="fa fa-star"></span><span class="fa fa-star"></span><span
									class="fa fa-star"></span><span class="fa fa-star"></span><span
									class="fa fa-star"></span>
							</p>
							<!-- <p class="mb-0"><span class="price mr-1">$120.00</span> <span class="per">per night</span></p> -->
							<h3 class="mb-3">
								<a href="rooms.html">Cuarto Estándar</a>
							</h3>
							<ul class="list-accomodation">
								<li><span>Máximo:</span> 3 Personas</li>
								<li><span>Tamaño:</span> 45 metros2</li>
								<li><span>Vista:</span> Vista a chacras</li>
								<li><span>Cama:</span> 1</li>
							</ul>
							<p class="pt-1">
								<a href="room-single.html" class="btn-custom px-3 py-2">View
									Room Details <span class="icon-long-arrow-right"></span>
								</a>
							</p>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-6">
				<div class="room-wrap d-md-flex">
					<a href="#" class="img order-md-last"
						style="background-image: url(images/room-3.jpg);"></a>
					<div class="half right-arrow d-flex align-items-center">
						<div class="text p-4 p-xl-5 text-center">
							<p class="star mb-0">
								<span class="fa fa-star"></span><span class="fa fa-star"></span><span
									class="fa fa-star"></span><span class="fa fa-star"></span><span
									class="fa fa-star"></span>
							</p>
							<!-- <p class="mb-0"><span class="price mr-1">$120.00</span> <span class="per">por noche</span></p> -->
							<h3 class="mb-3">
								<a href="rooms.html">Cuarto Familiar</a>
							</h3>
							<ul class="list-accomodation">
								<li><span>Máximo:</span> 3 Personas</li>
								<li><span>Tamaño:</span> 45 metros2</li>
								<li><span>Vista:</span> Vista a chacras</li>
								<li><span>Cama:</span> 1</li>
							</ul>
							<p class="pt-1">
								<a href="room-single.html" class="btn-custom px-3 py-2">View
									Room Details <span class="icon-long-arrow-right"></span>
								</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="room-wrap d-md-flex">
					<a href="#" class="img order-md-last"
						style="background-image: url(images/room-4.jpg);"></a>
					<div class="half right-arrow d-flex align-items-center">
						<div class="text p-4 p-xl-5 text-center">
							<p class="star mb-0">
								<span class="fa fa-star"></span><span class="fa fa-star"></span><span
									class="fa fa-star"></span><span class="fa fa-star"></span><span
									class="fa fa-star"></span>
							</p>
							<!-- <p class="mb-0"><span class="price mr-1">$120.00</span> <span class="per">per night</span></p> -->
							<h3 class="mb-3">
								<a href="rooms.html">Cuarto Deluxe</a>
							</h3>
							<ul class="list-accomodation">
								<li><span>Máximo:</span> 3 Personas</li>
								<li><span>Tamaño:</span> 45 metros2</li>
								<li><span>Vista:</span> Vista al oceano</li>
								<li><span>Cama:</span> 1</li>
							</ul>
							<p class="pt-1">
								<a href="room-single.html" class="btn-custom px-3 py-2">Ver
									detalles del cuarto<span class="icon-long-arrow-right"></span>
								</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<section class="ftco-section testimony-section bg-light">
	<div class="container">
		<div class="row justify-content-center pb-5 mb-3">
			<div class="col-md-7 heading-section text-center ftco-animate">
				<h2>Clientes felices &amp; Comentarios</h2>
			</div>
		</div>
		<div class="row ftco-animate">
			<div class="col-md-12">
				<div class="carousel-testimony owl-carousel">
					<div class="item">
						<div class="testimony-wrap d-flex">
							<div class="user-img"
								style="background-image: url(images/person_1.jpg)"></div>
							<div class="text pl-4">
								<span
									class="quote d-flex align-items-center justify-content-center">
									<i class="fa fa-quote-left"></i>
								</span>
								<p>«Este no es un lugar para dar paseos por placer. La zona
									quiere ser respetada, sino te castigará.»</p>
								<p class="name">Ken Bosh</p>
								<span class="position">Stalker</span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimony-wrap d-flex">
							<div class="user-img"
								style="background-image: url(images/person_1.jpg)"></div>
							<div class="text pl-4">
								<span
									class="quote d-flex align-items-center justify-content-center">
									<i class="fa fa-quote-left"></i>
								</span>
								<p>«Te emborrachaste después de todo ¿Yo? ¿Qué quieres
									decir? Tome una copa como hace la mitad de la población. La
									otra mitad ya está borracha, mujeres y niños incluidos»</p>
								<p class="name">Martha Stewart</p>
								<span class="position">Empresaria</span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimony-wrap d-flex">
							<div class="user-img"
								style="background-image: url(images/person_4.jpg)"></div>
							<div class="text pl-4">
								<span
									class="quote d-flex align-items-center justify-content-center">
									<i class="fa fa-quote-left"></i>
								</span>
								<p>«Un hombre escribe porque está atormentado, porque duda.
									Necesita probarse constantemente a sí mismo y a los demás que
									vale algo. ¿Y si estoy seguro de que soy un genio? ¿Por qué
									escribir entonces? ¿Para qué demonios?»</p>
								<p class="name">Rodel Golez</p>
								<span class="position">Cientifico</span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimony-wrap d-flex">
							<div class="user-img"
								style="background-image: url(images/person_1.jpg)"></div>
							<div class="text pl-4">
								<span
									class="quote d-flex align-items-center justify-content-center">
									<i class="fa fa-quote-left"></i>
								</span>
								<p>«Solo hay una persona que puede decidir lo que voy a
									hacer, y soy yo mismo.»</p>
								<p class="name">Kaleio Fross</p>
								<span class="position">Profesor</span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimony-wrap d-flex">
							<div class="user-img"
								style="background-image: url(images/person_3.jpg)"></div>
							<div class="text pl-4">
								<span
									class="quote d-flex align-items-center justify-content-center">
									<i class="fa fa-quote-left"></i>
								</span>
								<p>«Un hombre que no pasa tiempo con su familia nunca puede
									ser un hombre de verdad»</p>
								<p class="name">Deviol</p>
								<span class="position">Padrino</span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimony-wrap d-flex">
							<div class="user-img"
								style="background-image: url(images/person_4.jpg)"></div>
							<div class="text pl-4">
								<span
									class="quote d-flex align-items-center justify-content-center">
									<i class="fa fa-quote-left"></i>
								</span>
								<p>«..., me siento honrado y agradecido de que me haya
									invitado a su casa el día de la boda de su hija. Le deseo que
									el primer hijo sea varón»</p>
								<p class="name">Rodel Golez</p>
								<span class="position">Negociante</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section bg-light">
	<div class="container">
		<div class="row no-gutters">
			<div class="col-md-6 wrap-about">
				<div class="img img-2 mb-4"
					style="background-image: url(images/about.jpg);"></div>
				<h2>El hospedaje mejor recomendado</h2>
				<p>No llores, el mundo de los hombres es así, los humanos buscan
					el dolor, no la alegría, y prefieren sufrir antes que amar, esos
					estúpidos hombres luchan por el dolor y el sufrimiento, se
					complacen con la muerte.</p>
			</div>
			<div class="col-md-6 wrap-about ftco-animate">
				<div class="heading-section">
					<div class="pl-md-5">
						<h2 class="mb-2">Disfrute también</h2>
					</div>
				</div>
				<div class="pl-md-5">
					<p>A small river named Duden flows by their place and supplies
						it with the necessary regelialia. It is a paradisematic country,
						in which roasted parts of sentences fly into your mouth.</p>
					<div class="row">
						<div class="services-2 col-lg-6 d-flex w-100">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="flaticon-diet"></span>
							</div>
							<div class="media-body pl-3">
								<h3 class="heading">Tea Coffee</h3>
								<p>A small river named Duden flows by their place and
									supplies it with the necessary</p>
							</div>
						</div>
						<div class="services-2 col-lg-6 d-flex w-100">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="flaticon-workout"></span>
							</div>
							<div class="media-body pl-3">
								<h3 class="heading">Hot Showers</h3>
								<p>A small river named Duden flows by their place and
									supplies it with the necessary</p>
							</div>
						</div>
						<div class="services-2 col-lg-6 d-flex w-100">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="flaticon-diet-1"></span>
							</div>
							<div class="media-body pl-3">
								<h3 class="heading">Laundry</h3>
								<p>A small river named Duden flows by their place and
									supplies it with the necessary</p>
							</div>
						</div>
						<div class="services-2 col-lg-6 d-flex w-100">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="flaticon-first"></span>
							</div>
							<div class="media-body pl-3">
								<h3 class="heading">Air Conditioning</h3>
								<p>A small river named Duden flows by their place and
									supplies it with the necessary</p>
							</div>
						</div>
						<div class="services-2 col-lg-6 d-flex w-100">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="flaticon-first"></span>
							</div>
							<div class="media-body pl-3">
								<h3 class="heading">Free Wifi</h3>
								<p>A small river named Duden flows by their place and
									supplies it with the necessary</p>
							</div>
						</div>
						<div class="services-2 col-lg-6 d-flex w-100">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="flaticon-first"></span>
							</div>
							<div class="media-body pl-3">
								<h3 class="heading">Kitchen</h3>
								<p>A small river named Duden flows by their place and
									supplies it with the necessary</p>
							</div>
						</div>
						<div class="services-2 col-lg-6 d-flex w-100">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="flaticon-first"></span>
							</div>
							<div class="media-body pl-3">
								<h3 class="heading">Ironing</h3>
								<p>No llores, el mundo de los hombres es así, los humanos
									buscan el dolor, no la alegría, y prefieren sufrir antes que
									amar, esos estúpidos hombres luchan por el dolor y el
									sufrimiento, se complacen con la muerte</p>
							</div>
						</div>
						<div class="services-2 col-lg-6 d-flex w-100">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="flaticon-first"></span>
							</div>
							<div class="media-body pl-3">
								<h3 class="heading">Lovkers</h3>
								<p>A small river named Duden flows by their place and
									supplies it with the necessary</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="ftco-intro"
	style="background-image: url(images/bg_1.jpg);"
	data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-9 text-center">
				<h2>Está listo para descansar?</h2>
				<p class="mb-4">Todos los hombres nacen llorando, y mueren
					cuando ya han llorado lo suficiente</p>
				<p class="mb-0">
					<a href="#" class="btn btn-primary px-4 py-3">Registrese ahora</a>
					<a href="#" class="btn btn-white px-4 py-3">Contáctenos</a>
				</p>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section bg-light">
	<div class="container">
		<div class="row justify-content-center pb-5 mb-3">
			<div class="col-md-7 heading-section text-center ftco-animate">
				<h2>Últimas noticias en nuestro blog</h2>
				<span class="subheading">Noticias &amp; Blog</span>
			</div>
		</div>
		<div class="row d-flex">
			<div class="col-md-4 d-flex ftco-animate">
				<div class="blog-entry align-self-stretch">
					<a href="blog-single.html" class="block-20 rounded"
						style="background-image: url('images/image_1.jpg');"> </a>
					<div class="text p-4 text-center">
						<h3 class="heading">
							<a href="#">«El único enemigo peligroso en la situación
								actual es el pánico. Es contagioso, y no debemos dejar que acabe
								con el sentido común.»</a>
						</h3>
						<div class="meta mb-2">
							<div>
								<a href="#">Abril 14, 2023</a>
							</div>
							<div>
								<a href="#">Admin</a>
							</div>
							<div>
								<a href="#" class="meta-chat"><span class="fa fa-comment"></span>
									3</a>
							</div>
						</div>
						<p>«Hemos llegado a tal falta de toda armonía, a tal
							desequilibrio entre el desarrollo material y espiritual.»</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 d-flex ftco-animate">
				<div class="blog-entry align-self-stretch">
					<a href="blog-single.html" class="block-20 rounded"
						style="background-image: url('images/image_2.jpg');"> </a>
					<div class="text p-4 text-center">
						<h3 class="heading">
							<a href="#">«No debes esperar nada, eso es importante. Uno no
								debe esperar nada.»</a>
						</h3>
						<div class="meta mb-2">
							<div>
								<a href="#">Abril 18, 2023</a>
							</div>
							<div>
								<a href="#">Admin</a>
							</div>
							<div>
								<a href="#" class="meta-chat"><span class="fa fa-comment"></span>
									3</a>
							</div>
						</div>
						<p>«El producto de todo esfuerzo poético reposa tan lejos de
							su autor que uno apenas puede creer que sea una creación humana.»</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 d-flex ftco-animate">
				<div class="blog-entry align-self-stretch">
					<a href="blog-single.html" class="block-20 rounded"
						style="background-image: url('images/image_3.jpg');"> </a>
					<div class="text p-4 text-center">
						<h3 class="heading">
							<a href="#">«Digan lo que digan, un método, un sistema es
								algo muy bueno.»</a>
						</h3>
						<div class="meta mb-2">
							<div>
								<a href="#">Abril 11, 2023</a>
							</div>
							<div>
								<a href="#">Admin</a>
							</div>
							<div>
								<a href="#" class="meta-chat"><span class="fa fa-comment"></span>
									3</a>
							</div>
						</div>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="..\paginas\similares\piedepagina.jsp"%>

</body>
</html>