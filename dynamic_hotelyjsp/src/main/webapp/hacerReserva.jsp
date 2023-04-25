<%@page import="DAO.DaoReserva"%>
<%@page import="DAO.DaoHuesped"%>
<%@page import="Clases.Habitacion"%>

<%@page import="Clases.Huesped"%>
<%@page import="Clases.Reserva"%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.management.modelmbean.RequiredModelMBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aqui se prueba el lanzamiento</title>
</head>
<body>
<%
	//DATOS PARA INGRESAR HUESPED
	String nombre = request.getParameter("nombre");
	String apellido_paterno = request.getParameter("apellido_paterno");
	String apellido_materno = request.getParameter("apellido_materno");
	String direccion = request.getParameter("direccion");
	String dni = request.getParameter("dni");
	String telefono = request.getParameter("telefono");
	String email = request.getParameter("email");
	out.print("Ingreso de datos correcto");
	
	//DATO PARA INGRESAR LA HABITACION
	int num_habitacion = Integer.parseInt(request.getParameter("habitacion"));
	
	//DATOS INGRESADOS A RESERVA
	String fecha_entrada = request.getParameter("fecha_entrada");
	String fecha_salida  = request.getParameter("fecha_salida");
	
	//FORMATO PARA GUARDAR FECHA EN FORMATO AÑO/MES/DIA	
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	java.sql.Date fechaSql_entrada = new java.sql.Date(dateFormat.parse(fecha_entrada).getTime());
	java.sql.Date fechaSql_salida = new java.sql.Date(dateFormat.parse(fecha_salida).getTime());
	
	
	
	//DATOS ALMACENADOS EN HABITACION
	Habitacion habitacion = new Habitacion();
	habitacion.setId_habitacion(num_habitacion);
	
	//DATOS ALMACENADOS EN EL HUESPED
	Huesped huesped = new Huesped();
	huesped.setNombre(nombre);	
	huesped.setApellido_paterno(apellido_paterno);
	huesped.setApellido_materno(apellido_materno);
	huesped.setDireccion(direccion);
	huesped.setDni(dni);
	huesped.setTelefono(telefono);
	huesped.setEmail(email);
	
	//GUARDAR EN LA BASE DE DATOS
	DaoHuesped daoHuesped = new DaoHuesped();
	daoHuesped.guardar(huesped);
	//INTENTAR TRAER EL ULTIMO VALOR
	int id_huesped = daoHuesped.obtenerUltimoIdHuesped();
	huesped.setId_huesped(id_huesped);
	
	//DATOS ALMACENADOS EN RESERVA
	Reserva reserva = new Reserva();
	reserva.setFecha_entrada(fechaSql_entrada);
	reserva.setFecha_salida(fechaSql_salida);
	reserva.setHuesped(huesped);
	reserva.setHabitacion(habitacion);
	
	
	out.print(nombre+"-aqui el huesped :"+huesped.getId_huesped()+"- aqui deberia estar el num_habitacion :"+num_habitacion);
	//Ingresar datos de Reserva
	DaoReserva dao = new DaoReserva();
	dao.guardarReserva(reserva);
%>
</body>
</html>