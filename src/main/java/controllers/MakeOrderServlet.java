package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Product;
import services.OrderService;
import services.ProductService;

@WebServlet("/orders/make")
public class MakeOrderServlet extends HttpServlet {
	
	/*** */
	private static final long serialVersionUID = 1L;
	
	private ServletContext context;
	private ProductService productService = new ProductService();
	private OrderService orderService = new OrderService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Product> products = productService.findAll();
		
		request.setAttribute("products", products);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/order_make.jsp");
		dispatcher.forward(request, response);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//recebemos os dados do Formulário
		
		context = req.getServletContext();
		
		String[] products_id = req.getParameterValues("product_id_input");
		
		orderService.make(products_id, 9999999999.0, 9999999999.0);
		
		
		resp.sendRedirect(context.getContextPath() +"/index.jsp");
	}
	
}
