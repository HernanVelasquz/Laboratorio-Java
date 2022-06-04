package Data;

import Conexion.ConexionBD;

import javax.swing.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PreguntaDAO {
    public String getQuestion(int idpregunta) {
        Connection con = null;
        String pregunta = "";
        try {
            con = ConexionBD.getConnection();
            String sql = " select pregunta from preguntas where idpregunta=? ";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setInt(1, idpregunta);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                pregunta = result.getString(1);
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Código : " + ex.getErrorCode() + "\nError :" + ex.getMessage());
        }
        return pregunta;
    }
}
