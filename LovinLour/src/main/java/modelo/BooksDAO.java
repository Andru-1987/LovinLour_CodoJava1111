package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import config.Conector;

public class BooksDAO {
    Connection cnx;
    enum Tabla{
        books;
    }
    public BooksDAO(){
        Conector conn=new Conector();
        cnx=conn.conectarDB();
    }
    
    public List<Books> mostrarBooks(){

        PreparedStatement ps;
        ResultSet rs;
        List<Books> listaBooks=new ArrayList<>();
        Tabla tabla=Tabla.books;
        String querySQLShowAll="select * from "+ tabla;

        try {
            ps=cnx.prepareStatement(querySQLShowAll);
            rs=ps.executeQuery();
            while(rs.next()){
                int idBook=rs.getInt("idBook");
                String book=rs.getString("book");
                String autor=rs.getString("autor");
                String idioma=rs.getString("idioma");
                String primeraPublicacion=rs.getString("primeraPublicacion");
                String ventas=rs.getString("ventas");
                String ISBN=rs.getString("ISBN");
                String recomendado=rs.getString("recomendacion");
                    if (recomendado==null||recomendado.isEmpty()){
                        recomendado="No one yet";
                    }

                Books bookN=new Books(idBook, book, autor,idioma,primeraPublicacion,ventas,ISBN,recomendado);
                // Appendeo cada empleado a una lista de empleados
                listaBooks.add(bookN);
            }
            return listaBooks;

        } catch (SQLException e) {
            System.out.println(e.toString()); 
            return null;       
        } 

    }

    public boolean updateFull(Books book){
        PreparedStatement ps;
        Tabla tabla=Tabla.books;
        String querySQLUpdate="update "+tabla+" set autor=?, idioma=?, primeraPublicacion=?, ventas=?, ISBN=?, recomendado=? where id=?";

        try {
            ps=cnx.prepareStatement(querySQLUpdate);
        
            ps.setString(1, book.getAutor());
            ps.setString(2, book.getIdioma());
            ps.setString(3, book.getPrimeraPublicacion());
            ps.setString(4, book.getVentas());
            ps.setString(5, book.getISBN());
            ps.setString(6, book.getRecomendacion());
            ps.setInt(7, book.getIdBook());

            ps.executeUpdate();
            return true;

        } catch (SQLException e) {
            System.out.println(e.toString());
            return false;
        }
    }



    public boolean updateBasic(Books book, String nombre, String autor, String ventas){
        PreparedStatement ps;
        Tabla tabla=Tabla.books;
        String querySQLUpdate="update "+tabla+" set autor=?, ventas=?, book=? where idBook=?";

        try {
            ps=cnx.prepareStatement(querySQLUpdate);
        
            ps.setString(1, autor);
            ps.setString(2, ventas);
            ps.setString(3, nombre);
            ps.setInt(4, book.getIdBook());

            ps.executeUpdate();
            return true;

        } catch (SQLException e) {
            System.out.println(e.toString());
            return false;
        }
    }
         
    public Boolean recomendar(int IDBook, String nombreUsuario){
        PreparedStatement ps;
        Tabla tabla=Tabla.books;
        String querySQLUpdate="update "+tabla+" set recomendacion=? where idBook=?";

        try {
            ps=cnx.prepareStatement(querySQLUpdate);
            ps.setString(1, nombreUsuario);
            ps.setInt(2, IDBook);
            ps.executeUpdate();
            return true;

        } catch (SQLException e) {
            System.out.println(e.toString());
            return false;
        }

    }

    public Books obtenerBook(int IDBook){
        PreparedStatement ps;
        ResultSet rs;
        Books bookN=null;

        Tabla tabla=Tabla.books;
        String querySQLShowOne="select * from "+ tabla+" where idBook=?";

        try {
            ps=cnx.prepareStatement(querySQLShowOne);
            ps.setInt(1, IDBook);
            rs=ps.executeQuery();

            while(rs.next()){
                int idBook=rs.getInt("idBook");
                String book=rs.getString("book");
                String autor=rs.getString("autor");
                String idioma=rs.getString("idioma");
                String primeraPublicacion=rs.getString("primeraPublicacion");
                String ventas=rs.getString("ventas");
                String ISBN=rs.getString("ISBN");
                String recomendado=rs.getString("recomendacion");
                
                // Almaceno los empleados en un tipo empleado creado por la clase Empleado
                bookN=new Books(idBook, book, autor, idioma, primeraPublicacion, ventas, ISBN, recomendado);
            }
            return bookN;

        } catch (SQLException e) {
            System.out.println(e.toString()); 
            return null;       
        } 

    }
    


    public static void main(String[]args){

    }

}
