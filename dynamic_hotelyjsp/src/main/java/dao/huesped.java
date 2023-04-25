package dao;

public class huesped {
	int id_huesped;
	String nombre, apematerno, apepaterno;
	String dni, telefono, email, direccion;

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getId_huesped() {
		return id_huesped;
	}

	public void setId_huesped(int id_huesped) {
		this.id_huesped = id_huesped;
	}

	public String getApematerno() {
		return apematerno;
	}

	public void setApematerno(String apematerno) {
		this.apematerno = apematerno;
	}

	public String getApepaterno() {
		return apepaterno;
	}

	public void setApepaterno(String apepaterno) {
		this.apepaterno = apepaterno;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

}
