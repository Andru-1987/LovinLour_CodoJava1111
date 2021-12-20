package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.User;
import modelo.UsersDAO;


@WebServlet("/Control")
public class Controller extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
        
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UsersDAO userDao=new UsersDAO();
        String accion;
        RequestDispatcher dispatcher=null;
        accion=req.getParameter("accion");

        if(accion.equals("login")){
            String email=req.getParameter("email");
            String password=req.getParameter("password");
            User usuario;
            usuario=userDao.obtenerUserPorEmail(email);
            
            if (usuario==null)
            {
                dispatcher=req.getRequestDispatcher("/vistas/error.jsp");
                
            } 
            else 
            {
                String usuarioPass=usuario.getPassword();
                    if(!usuarioPass.equals(password)) {
                        dispatcher=req.getServletContext().getRequestDispatcher("/vistas/error.jsp");
                        
                    }
                    else{
                        HttpSession userSesion=req.getSession();
                        String nameUser=usuario.getNombre();
                        userSesion.setAttribute("usuario", nameUser);
                        dispatcher=req.getServletContext().getRequestDispatcher("/vistas/books.jsp");
                        
                        
                        if(accion.equals("logOut")){
                            HttpSession sesion= req.getSession();
                            sesion.invalidate();
                        }

                    }
            }
        }
        else if(accion.equals("signup")){
            dispatcher=req.getRequestDispatcher("/vistas/signup.jsp");
        }


        dispatcher.forward(req, resp);
    }
}
