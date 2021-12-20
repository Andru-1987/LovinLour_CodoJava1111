package servlet;

import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.UsersDAO;
@WebServlet("/DeleteAccount")
public class DeleteAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion;
        RequestDispatcher dispatcher=null;
        UsersDAO userDao=new UsersDAO();

        accion=req.getParameter("accion"); 

        if (accion.equals("delete")){
            HttpSession sesionId=(HttpSession) req.getSession();
            int idUser = (int) sesionId.getAttribute("idUsuario");

            userDao.deleteUser(idUser);
            dispatcher=req.getRequestDispatcher("/vistas/delete.jsp");            
        }
        dispatcher.forward(req,resp);
    }
}
