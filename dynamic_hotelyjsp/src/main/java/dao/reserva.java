package dao;

import java.security.Timestamp;
import java.sql.Time;

public class reserva 
{
	int id_reserva, id_huesped, id_habitacion;
	Time fecha_entrada, fecha_salida;
	
	public int getId_reserva() {
		return id_reserva;
	}
	public void setId_reserva(int id_reserva) {
		this.id_reserva = id_reserva;
	}
	public int getId_huesped() {
		return id_huesped;
	}
	public void setId_huesped(int id_huesped) {
		this.id_huesped = id_huesped;
	}
	public int getId_habitacion() {
		return id_habitacion;
	}
	public void setId_habitacion(int id_habitacion) {
		this.id_habitacion = id_habitacion;
	}
	public Time getFecha_entrada() {
		return fecha_entrada;
	}
	public void setFecha_entrada(Time fecha_entrada) {
		this.fecha_entrada = fecha_entrada;
	}
	public Time getFecha_salida() {
		return fecha_salida;
	}
	public void setFecha_salida(Time fecha_salida) {
		this.fecha_salida = fecha_salida;
	}
	
}
