package com.bharath.cricket.app;

import com.bharath.cricket.config.ConnectionProvider;
import com.bharath.cricket.config.DBConnection;
import com.bharath.cricket.dao.PlayerDAO;
import com.bharath.cricket.dao.MatchDAO;
import com.bharath.cricket.service.PlayerService;
import com.bharath.cricket.service.MatchService;

import java.sql.Connection;
import java.util.List;

public class MainApp {

    public static void main(String[] args) {

        // Step 1: Create DB Connection Provider
        ConnectionProvider provider = new DBConnection(
                "jdbc:mysql://localhost:3306/cricket_analytics_db",
                "cricket_user",
                "cricket123"
        );

        // Step 2: Get Connection
        Connection conn = provider.getConnection();

        // Step 3: Create DAO Layer
        PlayerDAO playerDAO = new PlayerDAO(conn);
        MatchDAO matchDAO = new MatchDAO(conn);

        // Step 4: Create Service Layer
        PlayerService playerService = new PlayerService(playerDAO);
        MatchService matchService = new MatchService(matchDAO);

        // Step 5: Call Services (Now returns data)
        List<String> topScorers = playerService.getTopRunScorers();
        List<String> playerStats = playerService.getPlayerStats(16);
        List<List<String>> matchScore = matchService.getMatchScorecard(1);

        // Step 6: Display Output (UI responsibility)
        System.out.println("Top Run Scorers:");
        topScorers.forEach(System.out::println);

        System.out.println("\nPlayer Stats:");
        playerStats.forEach(System.out::println);

        System.out.println("\nMatch Scorecard:");
        matchScore.forEach(row -> System.out.println(String.join(" | ", row)));
    }
}