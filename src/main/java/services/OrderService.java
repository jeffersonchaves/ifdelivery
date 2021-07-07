package services;

import java.sql.SQLException;

import models.Order;
import repositories.OrderRepository;

public class OrderService {
	
	OrderRepository repository = new OrderRepository();
	
	public Order make(String[] productIds, Double latitude, Double longitude) {
		
		for(int i = 0; i < productIds.length; i++) {
			System.out.println(productIds[i]);
		}
		
		Order order = new Order();
		order.setLatitude(latitude);
		order.setLongitude(longitude);
		
		try {
		
			repository.make(order);
			//repository.
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}

	

}
