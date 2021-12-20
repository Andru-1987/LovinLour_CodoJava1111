package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Conector {
    public String driver="com.mysql.cj.jdbc.Driver";
    public String db="libreria";
    public String host="localhost";
    public String port="3308";
    public String url="jdbc:mysql://"+host+":"+port+"/"+db;
    public String user="root";
    public String pwd="";
    
    
    public Connection conectarDB(){
        Connection cnx=null;
        try {
            Class.forName(driver);
            cnx=DriverManager.getConnection(url, user, pwd);  
            System.out.println("Se conectó: "+ url);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error en Conectar" + e.toString());
            
        }
    return cnx;
    }


    public static void main(String[] args){
        Connection cnx=null;
        Conector conn=new Conector();
        cnx=conn.conectarDB();
        String tabla="books";
        

       
        try {
            // // Insertando datos
            // PreparedStatement ps2;
            // String queryInsert="insert into "+tabla+" (nombre,apellido) values ('Marcelo','Algaritte'),('Manuel','Vargas')";
            // ps2=cnx.prepareStatement(queryInsert);
            // ps2.executeUpdate();

            // Mostrando los resultados
            PreparedStatement ps;
            ResultSet resultado;
            String queryDisplay="select * from "+tabla;
            ps=cnx.prepareStatement(queryDisplay);
            resultado=ps.executeQuery();
            while(resultado.next())
            {
                int id=resultado.getInt("idBook");
                String nombre=resultado.getString("book");
                String apellido=resultado.getString("autor");
                String mensaje="ID: "+id+" Nombre: "+apellido+", Autor: "+nombre+".";
                System.out.println("-------------------------");
                System.out.println(mensaje);
                System.out.println("-------------------------");
            }
        
        } catch (SQLException e) {
                System.out.println("Algó salió mal"+ e);
        }

    }
}
