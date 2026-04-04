package com.bharath.cricket.dao;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class PlayerDAOTest {

    Connection conn;
    Statement stmt;
    ResultSet rs;

    PlayerDAO dao;

    @BeforeEach
    void setup() throws Exception {
        conn = mock(Connection.class);
        stmt = mock(Statement.class);
        rs = mock(ResultSet.class);

        dao = new PlayerDAO(conn);

        when(conn.createStatement()).thenReturn(stmt);
        when(stmt.executeQuery(anyString())).thenReturn(rs);

        when(rs.next()).thenReturn(true, false);
        when(rs.getString("player_name")).thenReturn("Virat");
        when(rs.getInt("total_runs")).thenReturn(12000);
    }

    @Test
    void testGetTopRunScorers() {
        var result = dao.getTopRunScorers();

        assertEquals(1, result.size());
        assertEquals("Virat:12000", result.get(0));
    }
}