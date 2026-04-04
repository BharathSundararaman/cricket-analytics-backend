package com.bharath.cricket.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PlayerDAO {

    private final Connection conn;

    // Constructor Injection
    public PlayerDAO(Connection conn) {
        this.conn = conn;
    }

    // Return data instead of printing
    public List<String> getTopRunScorers() {

        List<String> result = new ArrayList<>();

        String query = "SELECT p.player_name, b.total_runs " +
                "FROM player_batting_summary b " +
                "JOIN players p ON p.player_id = b.player_id " +
                "ORDER BY total_runs DESC";

        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                String row = rs.getString("player_name") + ":" + rs.getInt("total_runs");
                result.add(row);
            }

        } catch (SQLException e) {
            throw new RuntimeException("Error fetching top run scorers", e);
        }

        return result;
    }

    public List<String> getPlayerCareerStats(int playerId) {

        List<String> result = new ArrayList<>();

        try {
            CallableStatement stmt =
                    conn.prepareCall("{CALL get_player_career_stats(?)}");

            stmt.setInt(1, playerId);

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                String row = rs.getString("player_name") +
                        " | Runs: " + rs.getInt("total_runs") +
                        " | Avg: " + rs.getDouble("batting_average");

                result.add(row);
            }

        } catch (SQLException e) {
            throw new RuntimeException("Error fetching player stats", e);
        }

        return result;
    }
}