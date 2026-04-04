package com.bharath.cricket.service;

import com.bharath.cricket.dao.MatchDAO;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class MatchServiceTest {

    MatchDAO dao;
    MatchService service;

    @BeforeEach
    void setup() {
        dao = mock(MatchDAO.class);
        service = new MatchService(dao);
    }

    @Test
    void testValidMatchId() {

        when(dao.getMatchScorecard(1)).thenReturn(List.of());

        service.getMatchScorecard(1);

        verify(dao).getMatchScorecard(1);
    }

    @Test
    void testInvalidMatchId() {

        assertThrows(IllegalArgumentException.class, () -> {
            service.getMatchScorecard(0);
        });
    }
}
