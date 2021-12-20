package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.User;
import modelo.UsersDAO;

@WebServlet("/Signup")
public class Signup  extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion;
        RequestDispatcher dispatcher=null;
        accion=req.getParameter("accion");   

        if(accion.equals("insertar")){
            String nombre=req.getParameter("nombre");
            String apellido=req.getParameter("apellido");
            String email=req.getParameter("email");
            String pass=req.getParameter("password");

            User usuario=new User(0, nombre, apellido, email, pass);
            UsersDAO usersDao=new UsersDAO();

            if(usersDao.obtenerUserPorEmail(usuario.getEmail())==null){

                usersDao.insert(usuario);
                dispatcher=req.getRequestDispatcher("/vistas/felicidades.jsp");             

            } else{
                dispatcher=req.getRequestDispatcher("/vistas/error2.jsp");
            }
        }
        dispatcher.forward(req, resp);
    }
}
