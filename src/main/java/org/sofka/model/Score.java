package org.sofka.model;

public class Score {
    private String nick_player;
    private int score_player;

    public Score(String nick_player, int score_player) {
        this.nick_player = nick_player;
        this.score_player = score_player;
    }

    public String getNick_player() {
        return nick_player;
    }

    public void setNick_player(String nick_player) {
        this.nick_player = nick_player;
    }

    public int getScore_player() {
        return score_player;
    }

    public void setScore_player(int score_player) {
        this.score_player = score_player;
    }
}
