package com.bharath.cricket.app;

import com.bharath.cricket.service.PlayerService;

import com.bharath.cricket.service.MatchService;

public class MainApp {
    public static void main(String[] args){
        PlayerService service = new PlayerService();
        MatchService serv = new MatchService();
        service.showTopRunScorers();
        service.showPlayerStats(16);
        serv.showMatchScorecard(1);
    }
}
