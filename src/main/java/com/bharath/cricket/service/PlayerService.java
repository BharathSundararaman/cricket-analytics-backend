package com.bharath.cricket.service;

import com.bharath.cricket.dao.PlayerDAO;

public class PlayerService {
    PlayerDAO playerDAO = new PlayerDAO();

    public void showTopRunScorers(){
        playerDAO.getTopRunScorers();
    }
    public void showPlayerStats(int playerId){
        playerDAO.getPlayerCareerStats(playerId);
    }
}
