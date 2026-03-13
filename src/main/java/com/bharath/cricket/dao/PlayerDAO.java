package com.bharath.cricket.dao;

import com.bharath.cricket.config.DBConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.CallableStatement;
public class PlayerDAO {
    public void getTopRunScorers(){
        try{
            Connection conn=DBConnection.getConnection();

            String query="SELECT p.player_name,b.total_runs " +
                         "FROM player_batting_summary  b " +
                         "JOIN players p ON p.player_id = b.player_id " +
                         "ORDER BY total_runs DESC";
            Statement stmt = conn.createStatement();
            ResultSet rs=stmt.executeQuery(query);

            while(rs.next()){
                System.out.println(rs.getString("player_name") + ":" + rs.getInt("total_runs"));
            }
            conn.close();
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public void getPlayerCareerStats(int playerId) {

        try {

            Connection conn = DBConnection.getConnection();

            CallableStatement stmt =
                    conn.prepareCall("{CALL get_player_career_stats(?)}");

            stmt.setInt(1, playerId);

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {

                System.out.println(
                        rs.getString("player_name") +
                                " | Runs: " +
                                rs.getInt("total_runs") +
                                " | Avg: " +
                                rs.getDouble("batting_average")
                );
            }

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
