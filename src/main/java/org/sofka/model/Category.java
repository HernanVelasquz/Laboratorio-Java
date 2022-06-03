package org.sofka.model;

import org.sofka.abstracts.AbstractCategory;
import org.sofka.interfaces.InterfaceCategory;

public class Category  extends AbstractCategory implements InterfaceCategory {

    public Category(){
        level = 1;
    }

    public int getLevel(){
        return level;
    }

    public int getPoints(){
        return points;
    }

    public int levelUp(){
        level = (points == 25) ? 2 :
                (points == 50) ? 3 : (points == 75) ? 4 : 5;
        return level;
    }

    @Override
    public int pointUp() {
        return points += 5;
    }
}
