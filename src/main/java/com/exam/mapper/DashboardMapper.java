package com.exam.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.exam.dto.CartDTO;
import com.exam.dto.GoodsDTO;

import java.util.List;

public interface DashboardMapper {

	// 재고가 10개 이하인 상품 이름을 가져오는 메소드
	List<String> getLowrStockItems(String userid); // 매개변수는 필요에 따라 수정 가능
}
