package com.bharath.cricket.service;

import com.bharath.cricket.dao.PlayerDAO;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class PlayerServiceTest {

    PlayerDAO dao;
    PlayerService service;

    @BeforeEach
    void setup() {
        dao = mock(PlayerDAO.class);
        service = new PlayerService(dao);
    }

    @Test
    void testGetTopRunScorers() {

        when(dao.getTopRunScorers()).thenReturn(List.of("Virat:12000"));

        var result = service.getTopRunScorers();

        assertEquals(1, result.size());
        verify(dao).getTopRunScorers();
    }

    @Test
    void testInvalidPlayerId() {

        assertThrows(IllegalArgumentException.class, () -> {
            service.getPlayerStats(0);
        });
    }
}
