package org.sofka.abstracts;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.PrintWriter;

public abstract class AbstractFile {
        protected static FileWriter file;
        protected static BufferedWriter buffer;
        protected static PrintWriter printWrite;
}
