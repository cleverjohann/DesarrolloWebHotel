<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:directive.include file="..\paginas\similares\encabezado.jsp" />
<%@page import="java.util.List"%>
<%@page import="dao.huesped"%>
<%@page import="dao.daohuesped"%>
<jsp:directive.include file="..\paginas\similares\encabezado.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
table {
	display: block;
	height: 420px;
	overflow-y: scroll;
}

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

<section class="ftco-section bg-light">

	<div class="container">

		<div class="row no-gutters">
			<div class="col-md-12">
				<div class="wrapper"></div>
				<div class="row no-gutters">

					<div class="col-lg-8 col-md-7 d-flex align-items-stretch">
						<div class="contact-wrap w-100 p-md-5 p-4">
							<h3 class="mb-4">Registro de huespedes del hostal UTP</h3>

							<%
							String operacion = request.getParameter("operacion");

							if (operacion != null) {
								if (operacion.equals("UPDATE")) {
									huesped hp = new huesped();
									int id = Integer.parseInt(request.getParameter("id_huesped"));
									String nombre = request.getParameter("nombre");
									String ap_paterno = request.getParameter("apellido_paterno");
									String ap_materno = request.getParameter("apellido_ materno");
									String direcc = request.getParameter("direccion");
									String dni = request.getParameter("dni");
									String telef = request.getParameter("telefono");
									String correo = request.getParameter("email");

									hp.setId_huesped(id);
									hp.setNombre(nombre);
									hp.setApepaterno(ap_paterno);
									hp.setApematerno(ap_materno);
									hp.setDireccion(direcc);
									hp.setDni(dni);
									hp.setTelefono(telef);
									hp.setEmail(correo);

									daohuesped daoh = new daohuesped();
									daoh.Actualizar(hp);
								}
								if (operacion.equals("DELETE")) 
								{
									int id = Integer.parseInt(request.getParameter("id_huesped"));

									daohuesped daoh = new daohuesped();
									daoh.eliminar(id);
								}
							}
							//DaoCurso dao = new DaoCurso();
							%>
							<div id="form-message-warning" class="mb-4"></div>
							<%
							huesped habitacion = new huesped();
							daohuesped daohues = new daohuesped();
							List<huesped> lst = daohues.listar();
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
							out.print("Núm. Habitación");
							out.print("</th>");
							out.print("<th>");
							out.print("Tipo");
							out.print("</th>");
							out.print("<th>");
							out.print("Capacidad");
							out.print("</th>");
							out.print("<th>");
							out.print("Estado");
							out.print("</th>");
							out.print("<th>");
							out.print("Precio");
							out.print("</th>");

							out.print("<th>");
							out.print("");
							out.print("</th>");

							out.print("<th>");
							out.print("");
							out.print("</th>");

							out.print("</tr>");
							out.print("</thead>");
							for (huesped h : lst) {
								out.print("<tr>");
								out.print("<td>");
								out.print(h.getId_huesped());
								out.print("</td>");
								out.print("<td>");
								out.print(h.getNombre());
								out.print("</td>");

								out.print("<td>");
								out.print(h.getApepaterno());
								out.print("</td>");

								out.print("<td>");
								out.print(h.getApematerno());
								out.print("</td>");

								out.print("<td>");
								out.print(h.getDireccion());
								out.print("</td>");

								out.print("<td>");
								out.print(h.getDni());
								out.print("</td>");
								
								out.print("<td>");
								out.print(h.getTelefono());
								out.print("</td>");

								out.print("<td>");
								out.print(h.getEmail());
								out.print("</td>");
								
								out.print("<td>");
								out.print("<a class='button' href='modificarhabitacion.jsp?operacion=SELECTBYID&id=" + h.getId()
								+ "'>Actualizar</a>");

								out.print("</td>");
								out.print("<td>");
								out.print("<a class='button' href='listarhabitacion.jsp?operacion=DELETE&idhabitacion=" + h.getId()
								+ "'>Eliminar</a>");
								out.print("</td>");

								out.print("</tr>");
							}
							out.print("</table>");
							%>

						</div>
					</div>

					<div class="col-lg-4 col-md-5 d-flex align-items-stretch">
						<div class="info-wrap bg-primary w-100 p-md-5 p-4">
							<h3>Bienvenidos al proyecto de curso hotel del GRUPO UTP</h3>
							<p class="mb-4">
								Conocer mas sobre los registros <a href="agregarhabitacion.jsp"
									class="btn btn-secondary">Agregue su nueva habitacion</a>
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