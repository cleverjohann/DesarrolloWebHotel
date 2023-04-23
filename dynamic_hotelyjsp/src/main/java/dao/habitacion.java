package dao;

import java.math.BigDecimal;

public class habitacion {
	int id;
	String num_habitacion, tipo_habitacion;
	int capacidad;
	boolean disponibilidad;
	double precio;
	String precioString;
	
	//
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNum_habitacion() {
		return num_habitacion;
	}

	public void setNum_habitacion(String num_habitacion) {
		this.num_habitacion = num_habitacion;
	}

	public String getTipo_habitacion() {
		return tipo_habitacion;
	}

	public void setTipo_habitacion(String tipo_habitacion) {
		this.tipo_habitacion = tipo_habitacion;
	}

	public int getCapacidad() {
		return capacidad;
	}

	public void setCapacidad(int capacidad) {
		this.capacidad = capacidad;
	}

	public boolean isDisponibilidad() {
		return disponibilidad;
	}

	public void setDisponibilidad(boolean disponibilidad) {
		this.disponibilidad = disponibilidad;
	}

	public String getPrecioString() {
		return precioString;
	}

	public void setPrecioString(String precioString) {
		this.precioString = precioString;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	

}
