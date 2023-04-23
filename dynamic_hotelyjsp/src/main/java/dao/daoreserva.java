package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import dao.reserva;

public class daoreserva extends conexion
{
	public List<reserva> consultarTodos(){
		List<reserva> lst = new ArrayList<>();
		Connection crear = crearCNX();
		String sql = "SELECT id_reserva, fecha_entrada, fecha_salida, id_huesped, id_jabitacion FROM public.reservas";
		try {
			PreparedStatement ps = crear.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				reserva ra = new reserva();
				ra.setId_reserva(rs.getInt(1));
				ra.setFecha_entrada(rs.getTime(2));
				ra.setFecha_salida(rs.getTime(3));
				ra.setId_huesped(rs.getInt(4));
				ra.setId_habitacion(rs.getInt(5));
				lst.add(ra);
			}
		}catch(Exception e) {
			throw new RuntimeException(e);
		}finally {
			try {
				crear.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
		return lst;
	}
}
