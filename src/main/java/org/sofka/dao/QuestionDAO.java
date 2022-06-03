package org.sofka.dao;

import org.sofka.connection.ConecctionBaseData;

import javax.swing.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class QuestionDAO {
    public String getQuestion(int idpregunta) {
        Connection con = null;
        String pregunta = "";
        try {
            con = ConecctionBaseData.getConnection();
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
