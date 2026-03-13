package com.bharath.cricket.dao;

import com.bharath.cricket.config.DBConnection;
import java.sql.*;
public class MatchDAO {
    public void getMatchScorecard(int matchId){
        try{
            Connection conn=DBConnection.getConnection();
            CallableStatement stmt = conn.prepareCall("{CALL get_match_scorecard(?)}");
            stmt.setInt(1,matchId);
            boolean hasResults =stmt.execute();
            int resultSetCount=1;

            while(hasResults){
                ResultSet rs= stmt.getResultSet();
                System.out.println("\n Result Set " + resultSetCount);

                ResultSetMetaData meta = rs.getMetaData();
                int columns=meta.getColumnCount();

                while(rs.next()){
                    for(int i=1;i<=columns;i++){
                        System.out.print(rs.getString(i) + " | ");
                    }
                    System.out.println();
                }
                resultSetCount++;
                hasResults=stmt.getMoreResults();
            }
            conn.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
