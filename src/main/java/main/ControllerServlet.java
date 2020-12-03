package main;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class ControllerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        if(req.getParameter("X") == null || req.getParameter("Y") == null||req.getParameter("R") == null|| req.getParameter("pic")==null){
            req.getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
        }else {
            req.getServletContext().getRequestDispatcher("/check_area").forward(req, resp);
        }




    }
}
