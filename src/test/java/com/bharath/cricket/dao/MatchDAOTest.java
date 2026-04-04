package com.bharath.cricket.dao;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.sql.*;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class MatchDAOTest {

    Connection conn;
    CallableStatement stmt;
    ResultSet rs;
    ResultSetMetaData meta;

    MatchDAO dao;

    @BeforeEach
    void setup() throws Exception {

        conn = mock(Connection.class);
        stmt = mock(CallableStatement.class);
        rs = mock(ResultSet.class);
        meta = mock(ResultSetMetaData.class);

        dao = new MatchDAO(conn);

        when(conn.prepareCall(anyString())).thenReturn(stmt);
        when(stmt.execute()).thenReturn(true);
        when(stmt.getResultSet()).thenReturn(rs);

        when(rs.getMetaData()).thenReturn(meta);
        when(meta.getColumnCount()).thenReturn(2);

        when(rs.next()).thenReturn(true, false);

        when(rs.getString(1)).thenReturn("Player1");
        when(rs.getString(2)).thenReturn("100");
    }

    @Test
    void testGetMatchScorecard() {

        var result = dao.getMatchScorecard(1);

        assertEquals(1, result.size());
        assertEquals("Player1", result.get(0).get(0));
        assertEquals("100", result.get(0).get(1));
    }
}