package org.sofka.model;

import org.sofka.abstracts.AbstractFile;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.PrintWriter;

public class SaveRecordPlayer extends AbstractFile {
    public void saveRegister(){
        try {
            file = new FileWriter("RegistroUsuario.txt", true);
            buffer = new BufferedWriter(file);
            printWrite = new PrintWriter(buffer);
        }catch (Exception e) {
            throw new RuntimeException(null, e);
        }
    }
}
