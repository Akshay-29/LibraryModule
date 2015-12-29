package simple;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/control")
public class control extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String id;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("hello");
		if(request.getParameter("radios") != null) {
            if(request.getParameter("radios").equals("radio1")) {
                id="mech";
            }
            /*else {
                out.println("Radio button 1 was not selected.<BR>");
            }*/
            if(request.getParameter("radios").equals("radio2")) {
            	id="ele";
            }
           /* else {
                out.println("Radio button 2 was not selected.<BR>");
            }*/
            if(request.getParameter("radios").equals("radio3")) {
            	id="cse";
            }
           /* else {
                out.println("Radio button 3 was not selected.<BR>");
            }*/
            if(request.getParameter("radios").equals("radio4")) {
            	id="it";
            }
            if(request.getParameter("radios").equals("radio5")) {
            	id="ec";
            }
            if(request.getParameter("radios").equals("radio6")) {
            	id="chem";
            }
            if(request.getParameter("radios").equals("radio7")) {
            	id="meta";
            }
        }
		
	}

}
