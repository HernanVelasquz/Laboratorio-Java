package org.sofka.connection;
import org.sofka.interfaces.CredentialsAccesBaseData;

import javax.swing.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConecctionBaseData {
    public static Connection getConnection() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(CredentialsAccesBaseData.dbURL,CredentialsAccesBaseData .username,CredentialsAccesBaseData .password);
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
