package com.bharath.cricket.model;

public class Player {
    private int playerId;
    private String playerName;

    public Player(int playerId,String playerName){
        this.playerId=playerId;
        this.playerName=playerName;
    }

    public int getPlayerId(){
        return playerId;
    }

    public String getPlayerName(){
        return playerName;
    }
}
