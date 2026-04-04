package com.bharath.cricket.service;

import com.bharath.cricket.dao.MatchDAO;

import java.util.List;

public class MatchService {

    private final MatchDAO matchDAO;

    // Constructor Injection (MANDATORY)
    public MatchService(MatchDAO matchDAO) {
        this.matchDAO = matchDAO;
    }

    // Return data instead of printing
    public List<List<String>> getMatchScorecard(int matchId) {

        // Basic validation (important for service layer)
        if (matchId <= 0) {
            throw new IllegalArgumentException("Invalid match ID");
        }

        return matchDAO.getMatchScorecard(matchId);
    }
}