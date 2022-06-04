package Data;

import Conexion.ConexionBD;
import Entidades.Respuestas;

import javax.swing.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RespuestasDAO {
    public Respuestas getRespuesta(int idrespuesta){
        Connection con = null;
        Respuestas respuestaSet = null;
        ArrayList<String> temp = new ArrayList<>();
        try {
            con = ConexionBD.getConnection();
            String sql = " select respuesta, afirmativo from respuestas where idrespuesta =? ";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setInt(1, idrespuesta);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                temp.add(result.getString(1));
                temp.add(result.getString(2));
            }
            respuestaSet = new Respuestas(temp.get(0), temp.get(1), temp.get(2), temp.get(3), temp.get(4),
                    temp.get(5), temp.get(6), temp.get(7));
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Código : " + ex.getErrorCode() + "\nError :" + ex.getMessage());
        }
        return respuestaSet;

    }
}
