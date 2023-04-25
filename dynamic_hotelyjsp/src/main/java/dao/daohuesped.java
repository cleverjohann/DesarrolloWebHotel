package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.management.RuntimeErrorException;

public class daohuesped extends conexion
{
	public void guardar(huesped huesped) 
	{
		Connection con = crearCNX(); 
		String sql = "insert into public.huesped(id_huesped,nombre,apellido_paterno,apellido_materno,direccion,dni,telefono,email) values(nextval('seq_huesped'),?,?,?,?,?,?,?)";
		try 
		{
			PreparedStatement ps = con.prepareStatement(sql);	
			ps.setInt(1, huesped.getId_huesped());
			ps.setString(2, huesped.getNombre());
			ps.setString(3, huesped.getApepaterno());
			ps.setString(4, huesped.getApematerno());
			ps.setString(5, huesped.getDireccion());
			ps.setString(6, huesped.getDni());
			ps.setString(7, huesped.getTelefono());
			ps.setString(8, huesped.getEmail());
			//
			ps.execute();
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

	public List<huesped> listar() 
	{
		List<huesped> listarHuespedes = new ArrayList<>();
		Connection con = crearCNX();
		String sql = "select id_huesped, nombre, apellido_paterno, apellido_materno, direccion, dni, telefono, email from public.huespedes ";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			//
			ResultSet rs = ps.executeQuery();// ejecuta y trae RESULSET
			while (rs.next()) {
				huesped h = new huesped();
				h.setId_huesped(rs.getInt(1));
				h.setNombre(rs.getString(2));
				h.setApepaterno(rs.getString(3));
				h.setApematerno(rs.getString(4));
				h.setDireccion(rs.getString(5));
				h.setDni(rs.getString(6));
				h.setTelefono(rs.getString(7));
				h.setEmail(rs.getString(8));
				listarHuespedes.add(h);
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
	
	public int Actualizar(huesped huesped) {
		Connection con = crearCNX();
		int i = 0;
		try 
		{
			PreparedStatement ps = con.prepareStatement(
					"UPDATE huesped SET id_huesped=?, nombre=?, apellido_paterno=?, apellido_materno=?, direccion=?, dni=?, telefono=?, email=?  WHERE id_huesped=?");
			ps.setInt(1, huesped.getId_huesped());
			ps.setString(2, huesped.getNombre());
			ps.setString(3, huesped.getApepaterno());
			ps.setString(4, huesped.getDireccion());
			ps.setString(5, huesped.getDni());
			ps.setString(6, huesped.getTelefono());
			ps.setString(8, huesped.getEmail());
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
	
	public void eliminar(int id) 
	{
		Connection con = crearCNX();
		try {

			PreparedStatement ps = con.prepareStatement("UPDATE huesped WHERE id_habitacion="+id);
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
