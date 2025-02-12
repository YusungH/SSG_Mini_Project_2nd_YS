package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.exam.dto.CartDTO;
import com.exam.dto.GoodsDTO;
import com.exam.dto.RefrigeratorDTO;

@Mapper
public interface CartMapper {

	
	public int cartAdd(CartDTO dto);
	public List<CartDTO> cartList(String userid);
	public int cartDelete(int num);
	public int cartDeleteAll(List<String> list);
	public List<String> getCartItems();
	public List<CartDTO> getLowStockItems(String gName);
	public List<GoodsDTO> getAllStock();
	public List<RefrigeratorDTO> getLowrStockItems(String gName);
	public List<RefrigeratorDTO> getAllrStock();
	

}
