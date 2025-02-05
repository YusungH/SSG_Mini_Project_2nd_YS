package com.exam.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dao.StockDAO;

@Service
public class StockService {

    private final StockDAO stockDAO;

    // ✅ 생성자 주입
    public StockService(StockDAO stockDAO) {
        this.stockDAO = stockDAO;
    }

    public List<String> getLowStockItems() {
        return stockDAO.getLowStockItems();
    }
}