<%@page import="java.util.List"%>
<%@page import="dao.daohabitacion"%>
<%@page import="dao.habitacion"%>
<jsp:directive.include file="..\paginas\similares\encabezado.jsp" />
<!--  -->
<style>
table {
	display: block;
	height: 420px;
	overflow-y: scroll;
}
</style>
<section class="ftco-section bg-light">

	<div class="container">

		<div class="row no-gutters">
			<div class="col-md-12">
				<div class="wrapper"></div>
				<div class="row no-gutters">

					<div class="col-lg-8 col-md-7 d-flex align-items-stretch">
						<div class="contact-wrap w-100 p-md-5 p-4">
							<h3 class="mb-4">Registro de clientes registrados en el
								hotel UTP</h3>
							<div id="form-message-warning" class="mb-4"></div>
							<%
							habitacion habitacion = new habitacion();
							daohabitacion habitaciondao = new daohabitacion();
							List<habitacion> lst = habitaciondao.listar();
							%>
							<%
							//List<Curso> lst = dao.consultarTodos();
							out.print("<table border='1' class='table table-striped'>");
							out.print("<thead>");
							out.print("<tr>");
							out.print("<th>");
							out.print("ID");
							out.print("</th>");
							out.print("<th>");
							out.print("# Habitacion");
							out.print("</th>");
							out.print("<th>");
							out.print("Tipo");
							out.print("</th>");
							out.print("<th>");
							out.print("Capacidad");
							out.print("</th>");
							out.print("<th>");
							out.print("Disponibilidad");
							out.print("</th>");
							out.print("<th>");
							out.print("Precio");
							out.print("</th>");

							out.print("</tr>");
							out.print("</thead>");
							for (habitacion h : lst) {
								out.print("<tr>");
								out.print("<td>");
								out.print(h.getId());
								out.print("</td>");
								out.print("<td>");
								out.print(h.getNum_habitacion());
								out.print("</td>");

								out.print("<td>");
								out.print(h.getTipo_habitacion());
								out.print("</td>");

								out.print("<td>");
								out.print(h.getCapacidad());
								out.print("</td>");

								out.print("<td>");
								out.print(h.isDisponibilidad());
								out.print("</td>");

								out.print("<td>");
								out.print(h.getPrecio());
								out.print("</td>");

								out.print("<td>");
								out.print("<a href='cuartos.jsp?operacion=UPDATE&id=" + h.getId() + "'>Actualizar</a>");

								out.print("</td>");
								out.print("<td>");
								out.print("<a href='cuartos.jsp?operacion=DELETE&id=" + h.getId() + "'>Eliminar</a>");
								out.print("</td>");

								out.print("</tr>");
							}
							out.print("</table>");
							%>



						</div>
						<div class="col-lg-4 col-md-5 d-flex align-items-stretch">
							<div class="info-wrap bg-primary w-100 p-md-5 p-4">
								<h3>Bienvenidos al proyecto de curso hotel del GRUPO UTP</h3>
								<p class="mb-4">
									Conocer mas sobre los registros <a href="agregarcuartos.jsp"
										class="btn btn-secondary">Agregue su nuevo cuarto</a>
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
</section>
<%@ include file="..\paginas\similares\piedepagina.jsp"%>