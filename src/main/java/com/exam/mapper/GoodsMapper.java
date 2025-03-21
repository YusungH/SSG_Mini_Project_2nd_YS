package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.exam.dto.GoodsDTO;
import com.exam.dto.RefrigeratorDTO;

@Mapper
public interface GoodsMapper {

	public List<GoodsDTO> goodsList(String gCategory);

	public GoodsDTO goodsRetrieve(String gCode);

	// 모든 상품의 재고 정보 조회
	public List<GoodsDTO> getAllStock();

	// 모든 상품의 재고 정보 조회
	public List<RefrigeratorDTO> getAllrStock();
	public void addGoods(GoodsDTO goodsDTO); // 상품 추가 메서드


}
