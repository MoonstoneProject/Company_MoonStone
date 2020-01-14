package com.logicaldesigngroup.mail;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.apache.log4j.LogManager;


/**
 * Servlet implementation class SendEmail
 */
@WebServlet("/SendEmail")
public class SendEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendEmail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType( "text/html; charset=iso-8859-1" );
		PrintWriter out = response.getWriter();
		
		
		String nombre = request.getParameter("nombre");
		String email = request.getParameter("email");
		String textarea2 = request.getParameter("textarea2"); 
		UserDTO userDTO = new UserDTO(nombre, email, textarea2);
		
		
		
		out.println("Hola "+userDTO.getNombre()+".");
		out.println("<br>");
		out.println("Ya tenemos tu mensaje, te estaremos contactando pronto.");
		
		
		Send enviar = new Send();
		enviar.enviarConGMail(userDTO);
		
		
		
		/*
		enviar.enviarConGMail(
		        email, 
				"LogicalDesigne | nuevo mensaje de: "+nombre,
				"Nombre: "+nombre+" "+" "+"Cuerpo: "+textarea2);
		
		*/
		
	}
	


}
