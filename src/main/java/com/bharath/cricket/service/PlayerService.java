package com.bharath.cricket.service;

import com.bharath.cricket.dao.PlayerDAO;

import java.util.List;

public class PlayerService {

    private final PlayerDAO playerDAO;

    // Constructor Injection (MANDATORY)
    public PlayerService(PlayerDAO playerDAO) {
        this.playerDAO = playerDAO;
    }

    public List<String> getTopRunScorers() {
        return playerDAO.getTopRunScorers();
    }

    public List<String> getPlayerStats(int playerId) {

        // Validation (service layer responsibility)
        if (playerId <= 0) {
            throw new IllegalArgumentException("Invalid player ID");
        }

        return playerDAO.getPlayerCareerStats(playerId);
    }
}