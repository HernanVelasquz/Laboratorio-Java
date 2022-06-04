package Main;

import Vistas.Index;

public class Principal {


    public static int randomNumber(){
        int num = (int)((Math.random()*5)+1);
        return num;
    }

    public static void main(String[] args) {
        Index hs = new Index();
    }
}
