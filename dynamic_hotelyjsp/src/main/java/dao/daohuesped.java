package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.management.RuntimeErrorException;

public class daohuesped extends conexion{
	public void guardar(huesped huesped) {
		Connection con = crearCNX(); 
		String sql = "insert into public.huesped(id_huesped,nombre,apellido_paterno,apellido_materno, dni) values(nextval('seq_huesped'),?,?,?,?)";
		try {
			PreparedStatement ps = con.prepareStatement(sql);			
			ps.setString(1, huesped.getNombre());
			ps.setString(2, huesped.getApepaterno());
			ps.setString(3, huesped.getApematerno());
			ps.setString(4, huesped.getDni());			
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

	public List<huesped> listar(String key) {
		List<huesped> listarHuespedes = new ArrayList<>();
		Connection con = crearCNX();
		String sql = "select id_huesped, nombre, apellido_paterno, apellido_materno, dni from public.huespedes ";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "%" + key + "%");
			//
			ResultSet rs = ps.executeQuery();// ejecuta y trae RESULSET
			while (rs.next()) {
				huesped h = new huesped();
				h.setId_huesped(rs.getInt(1));
				h.setNombre(rs.getString(2));
				h.setApepaterno(rs.getString(3));
				h.setApematerno(rs.getString(4));				
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
}
