package com.bharath.cricket.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MatchDAO {

    private final Connection conn;

    // Constructor Injection (Correct)
    public MatchDAO(Connection conn) {
        this.conn = conn;
    }

    // Returns data instead of printing
    public List<List<String>> getMatchScorecard(int matchId) {

        List<List<String>> result = new ArrayList<>();

        try {
            CallableStatement stmt = conn.prepareCall("{CALL get_match_scorecard(?)}");
            stmt.setInt(1, matchId);

            boolean hasResults = stmt.execute();

            while (hasResults) {

                ResultSet rs = stmt.getResultSet();
                ResultSetMetaData meta = rs.getMetaData();
                int columns = meta.getColumnCount();

                while (rs.next()) {
                    List<String> row = new ArrayList<>();

                    for (int i = 1; i <= columns; i++) {
                        row.add(rs.getString(i));
                    }

                    result.add(row);
                }

                hasResults = stmt.getMoreResults();
            }

        } catch (SQLException e) {
            throw new RuntimeException("Error fetching match scorecard", e);
        }

        return result;
    }
}