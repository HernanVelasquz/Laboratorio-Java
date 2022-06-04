package Conexion;

import javax.swing.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConexionBD {

    public static Connection getConnection() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(Propiedades.dbURL,Propiedades.username,Propiedades.password);
            if (con != null) {
                System.out.println("Conectado a la base de datos");
                return con;
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Código : " + ex.getErrorCode() + "\nError :" + ex.getMessage());
            ex.printStackTrace();
        }
        return con;
    }
}
