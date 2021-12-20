package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import config.Conector;

public class UsersDAO {
    Connection cnx;
    enum Tabla{
        users;
    }
    public UsersDAO(){
        Conector conn=new Conector();
        cnx=conn.conectarDB();
    }

    public boolean insert(User usuario){
        PreparedStatement ps;
        Tabla tabla=Tabla.users;
        String querySQLInsert="insert into "+tabla+" (nombre, apellido , email , pass) values (?,?,?,?)";
        try {
            ps=cnx.prepareStatement(querySQLInsert);
            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getApellido());
            ps.setString(3,usuario.getEmail());
            ps.setString(4,usuario.getPassword());
            ps.execute();
            return true;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return false;
        }
    };


    public boolean deleteUser(int idUser){
        PreparedStatement ps;
        Tabla tabla=Tabla.users;
        String querySQLInsert="delete from "+tabla+" where idUser=?";
        try {
            ps=cnx.prepareStatement(querySQLInsert);
            ps.setInt(1, idUser);
            ps.execute();
            return true;

        } catch (SQLException e) {
            System.out.println(e.toString());
            return false;
        }
    }

    public User obtenerUserPorEmail(String Email){
        PreparedStatement ps;
        ResultSet rs;
        User usuario=null;

        Tabla tabla=Tabla.users;
        String querySQLShowOne="select * from "+ tabla+" where email=?";

        try {
            ps=cnx.prepareStatement(querySQLShowOne);
            ps.setString(1, Email);
            rs=ps.executeQuery();

            while(rs.next()){
                int id=rs.getInt("idUser");
                String nombre=rs.getString("nombre");
                String apellido=rs.getString("apellido");
                String email=rs.getString("email");
                String password=rs.getString("pass");
                
                // Almaceno los empleados en un tipo empleado creado por la clase Empleado
                usuario=new User(id, nombre, apellido,email,password);
            }
            return usuario;

        } catch (SQLException e) {
            System.out.println(e.toString()); 
            return null;       
        } 
        
    }

    public static void main(String[]args){
        System.out.println("Hello");
        UsersDAO usuario=new UsersDAO();
        System.out.println(usuario.obtenerUserPorEmail("anderson@gmail.com").getId());
        
        User u=new User(0,"oso", "pepe", "oso@pepe.com", "123");
        usuario.insert(u);
        usuario.deleteUser(4);
        
    }
}
