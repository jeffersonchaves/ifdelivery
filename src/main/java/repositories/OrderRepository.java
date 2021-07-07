package repositories;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.time.LocalDateTime;

import database.ConnectionFactory;
import enums.OrderStatus;
import models.Order;

public class OrderRepository {
	
	private Connection connection = ConnectionFactory.getConnection();
	
	public Order make(Order order) throws SQLException {
		
		/*PEDIDO*/
		PreparedStatement stmt = connection.prepareStatement("INSERT INTO tb_order(latitude, longitude, moment, status) VALUES(?, ?, ?, ?)", Statement.RETURN_GENERATED_KEYS);
		
		stmt.setDouble(1, order.getLatitude());
		stmt.setDouble(2, order.getLongitude());
		stmt.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
		stmt.setInt(4, 0);
		
		stmt.execute();
		
		ResultSet result = stmt.getGeneratedKeys();
		
		if (result.next()) {
			order.setId(result.getLong(1));
		}
		
		//relacionar com os produtos
		
		return order;
	}
	
	
	public void findAll(){
		
		
		try {
			
			String sql = "SELECT * FROM tb_order "
				+ "INNER JOIN tb_order_product ON tb_order.id = tb_order_product.order_id "
				+ "INNER JOIN tb_product ON tb_product.id = tb_order_product.product_id";
		
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			ResultSet result = stmt.executeQuery();
						
			while (result.next()) {
				
				Order order = new Order();
				order.setId(result.getLong("order_id"));
				order.setLatitude(result.getDouble("latitude"));
				order.setLongitude(result.getDouble("longitude"));
				order.setMoment(result.getTimestamp("moment"));
				order.setStatus(OrderStatus.values()[result.getInt("status")]);
				
				System.out.println(order);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
