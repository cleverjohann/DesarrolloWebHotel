<%@page import="javax.faces.convert.IntegerConverter"%>
<%@page import="dao.daohuesped"%>
<%@page import="dao.huesped"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Huesped</title>
</head>
<body>
	<%
	int id = Integer.parseInt(request.getParameter("id_nombre"));
	String nom = (request.getParameter("nombre"));
	String apepat = request.getParameter("apellido_paterno");
	String apemat = (request.getParameter("apellido_materno"));
	String direcc = (request.getParameter("direccion"));
	String dni = (request.getParameter("dni"));
	String telf = (request.getParameter("telefono"));
	String email = (request.getParameter("email"));
	out.print("-" + nom);
	//string -> entero
	huesped huesped = new huesped();
	huesped.setId_huesped(id);
	huesped.setNombre(nom);
	huesped.setApepaterno(apepat);
	huesped.setApematerno(apemat);
	huesped.setDireccion(direcc);
	huesped.setDni(dni);
	huesped.setTelefono(telf);
	huesped.setEmail(email);
	//servidor<-hora
	daohuesped daohuesped = new daohuesped();
	daohuesped.guardar(huesped);
	%>
</body>
</html>