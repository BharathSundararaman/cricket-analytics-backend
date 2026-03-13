package com.bharath.cricket.service;

import com.bharath.cricket.dao.MatchDAO;

public class MatchService {
    MatchDAO matchDAO =new MatchDAO();

    public void showMatchScorecard(int matchId){
        matchDAO.getMatchScorecard(matchId);
    }
}
