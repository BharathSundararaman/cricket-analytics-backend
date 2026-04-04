package com.bharath.cricket.config;

import java.sql.Connection;

public interface ConnectionProvider {
    Connection getConnection();
}