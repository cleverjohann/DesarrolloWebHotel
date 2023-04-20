package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class daohabitacion extends conexion{
	public List<habitacion> listar() {
		List<habitacion> listarHuespedes = new ArrayList<>();
		Connection con = crearCNX();
		String sql = "select id_habitacion,num_habitacion,tipo_habitacion,capacidad,disponibilidad,precio from public.habitacion";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			//ps.setString(1, "%" + key + "%");
			//
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				habitacion hab = new habitacion();
				hab.setId(rs.getInt(1));
				hab.setNum_habitacion(rs.getString(2));
				hab.setTipo_habitacion(rs.getString(3));
				hab.setCapacidad(rs.getInt(4));
				hab.setDisponibilidad(rs.getBoolean(5));
				hab.setPrecioString(rs.getString(6));
				listarHuespedes.add(hab);
			}
			return listarHuespedes;
		} catch (SQLException e) {// no tipo runtime
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public List<habitacion> listarporID(int id) {
		List<habitacion> listarHuespedes = new ArrayList<>();
		Connection con = crearCNX();
		String sql = "select id_habitacion,num_habitacion,tipo_habitacion,capacidad,disponibilidad,precio from public.habitacion where id_habitacion=";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			//
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				habitacion hab = new habitacion();
				hab.setId(rs.getInt(1));
				hab.setNum_habitacion(rs.getString(2));
				hab.setTipo_habitacion(rs.getString(3));
				hab.setCapacidad(rs.getInt(4));
				hab.setDisponibilidad(rs.getBoolean(5));
				hab.setPrecio(rs.getBigDecimal(6));
				listarHuespedes.add(hab);
			}
			return listarHuespedes;
		} catch (SQLException e) {// no tipo runtime
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
