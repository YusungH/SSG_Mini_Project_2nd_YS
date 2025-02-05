package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository // ✅ 추가: Spring이 인식할 수 있도록 함
public interface StockDAO {
    List<String> getLowStockItems();
}