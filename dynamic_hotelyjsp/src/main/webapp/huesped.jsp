<%@page import="dao.daohuesped"%>
<%@page import="dao.huesped"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String nom = (request.getParameter("nombre"));
	String apepat = request.getParameter("apepat");
	String apemat = (request.getParameter("apemat"));
	String dni = (request.getParameter("dni"));
	out.print("-" + nom);
	//string -> entero
	huesped huesped = new huesped();
	huesped.setNombre(nom);
	huesped.setApepaterno(apepat);
	huesped.setApematerno(apemat);
	huesped.setDni(dni);
	//servidor<-hora
	daohuesped daohuesped = new daohuesped();
	daohuesped.guardar(huesped);
	%>
	
</body>
</html>