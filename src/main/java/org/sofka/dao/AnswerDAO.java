package org.sofka.dao;

import org.sofka.connection.ConecctionBaseData;
import org.sofka.model.Answer;

import javax.swing.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
public class AnswerDAO {
    public Answer getRespuesta(int idrespuesta){
        Connection con = null;
        Answer answerSet = null;
        ArrayList<String> temp = new ArrayList<>();
        try {
            con = ConecctionBaseData.getConnection();
            String sql = " select respuesta, afirmativo from respuestas where idrespuesta =? ";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setInt(1, idrespuesta);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                temp.add(result.getString(1));
                temp.add(result.getString(2));
            }
            answerSet = new Answer(temp.get(0), temp.get(1), temp.get(2), temp.get(3), temp.get(4),
                    temp.get(5), temp.get(6), temp.get(7));
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Código : " + ex.getErrorCode() + "\nError :" + ex.getMessage());
        }
        return answerSet;

    }
}
