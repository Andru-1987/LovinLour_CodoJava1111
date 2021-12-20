package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Books;
import modelo.BooksDAO;

@WebServlet("/BooksUpdate")
public class BooksUpdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        BooksDAO book=new BooksDAO();
        String accion;
        RequestDispatcher dispatcher=null ;
        accion=req.getParameter("accion");

        if (accion.equals("recomendar")){

            HttpSession sesion=(HttpSession) req.getSession();
            String nombreUsuario=(String) sesion.getAttribute("usuario");

            int IDBook=Integer.parseInt(req.getParameter("id"));
            book.recomendar(IDBook, nombreUsuario);

            dispatcher=req.getRequestDispatcher("/vistas/books.jsp");

        }
        else if(accion.equals("modificar")){
            dispatcher=req.getRequestDispatcher("/vistas/modificar.jsp");

        }else if(accion.equals("update")){
            
            int idBook=Integer.parseInt(req.getParameter("id"));
            String bookName=req.getParameter("nombre");
            String bookAutor=req.getParameter("autor");
            String bookVentas=req.getParameter("ventas");
            BooksDAO bookN=new BooksDAO();
            Books libro=bookN.obtenerBook(idBook);
            bookN.updateBasic(libro, bookName, bookAutor, bookVentas);

            dispatcher=req.getRequestDispatcher("/vistas/books.jsp");
        }

        dispatcher.forward(req,resp);
    }



}
