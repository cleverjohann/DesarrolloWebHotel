package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class daohabitacion extends conexion {
	public List<habitacion> listar() {
		List<habitacion> listarHuespedes = new ArrayList<>();
		Connection con = crearCNX();
		String sql = "select id_habitacion,num_habitacion,tipo_habitacion,capacidad,disponibilidad,precio from public.habitacion";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			// ps.setString(1, "%" + key + "%");
			//
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				habitacion hab = new habitacion();
				hab.setId(rs.getInt(1));
				hab.setNum_habitacion(rs.getString(2));
				hab.setTipo_habitacion(rs.getString(3));
				hab.setCapacidad(rs.getInt(4));
				hab.setDisponibilidad(rs.getBoolean(5));
				hab.setPrecio(rs.getDouble(6));
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

	public int Actualizar(habitacion habitacion) {
		Connection con = crearCNX();
		int i = 0;
		try {
			PreparedStatement ps = con.prepareStatement(
					"UPDATE habitacion SET num_habitacion=?, tipo_habitacion=?, capacidad=?, disponibilidad=?, precio=?  WHERE id_habitacion=?");
			ps.setString(1, habitacion.getNum_habitacion());
			ps.setString(2, habitacion.getTipo_habitacion());
			ps.setInt(3, habitacion.getCapacidad());
			ps.setBoolean(4, true);
			ps.setDouble(5, habitacion.getPrecio());
			ps.setInt(6, habitacion.getId());
			i = ps.executeUpdate();
			if (i != 1) {
				i = 0;
			}
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
		return i;
	}

	public habitacion obtenerporId(int id) {
		habitacion habitacion = new habitacion();

		Connection con = crearCNX();
		try {
			PreparedStatement stmt = con.prepareStatement(
					"SELECT id_habitacion, num_habitacion, tipo_habitacion, capacidad, disponibilidad, precio FROM habitacion WHERE id_habitacion="
							+ id);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				habitacion.setId(rs.getInt(1));
				habitacion.setNum_habitacion(rs.getString(2));
				habitacion.setTipo_habitacion(rs.getString(3));
				habitacion.setCapacidad(rs.getInt(4));
				habitacion.setDisponibilidad(rs.getBoolean(5));
				habitacion.setPrecio(rs.getDouble(6));
			}
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
		return habitacion;
	}

	public void eliminar(int id) {
		Connection con = crearCNX();
		try {

			PreparedStatement ps = con.prepareStatement("UPDATE habitacion SET disponibilidad='false' WHERE id_habitacion=" + id);
			ps.executeUpdate();
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
