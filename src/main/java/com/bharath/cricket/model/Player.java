package com.bharath.cricket.model;

import java.util.Objects;

public class Player {

    private int playerId;
    private String playerName;

    // Default constructor (important for frameworks)
    public Player() {}

    // Parameterized constructor
    public Player(int playerId, String playerName) {
        this.playerId = playerId;
        this.playerName = playerName;
    }

    // Getters
    public int getPlayerId() {
        return playerId;
    }

    public String getPlayerName() {
        return playerName;
    }

    // toString (for debugging/logging)
    @Override
    public String toString() {
        return "Player{" +
                "playerId=" + playerId +
                ", playerName='" + playerName + '\'' +
                '}';
    }

    // equals (for testing comparisons)
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Player)) return false;
        Player player = (Player) o;
        return playerId == player.playerId &&
                Objects.equals(playerName, player.playerName);
    }

    // hashCode (required when equals is overridden)
    @Override
    public int hashCode() {
        return Objects.hash(playerId, playerName);
    }
}
