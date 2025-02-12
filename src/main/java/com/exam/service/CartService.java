package com.exam.service;

import java.util.List;

import com.exam.dto.CartDTO;
import com.exam.dto.GoodsDTO;
import com.exam.dto.RefrigeratorDTO;



public interface CartService {

	public int cartAdd(CartDTO dto);
	public List<CartDTO> cartList(String userid);
	public int cartDelete(int num);
	public int cartDeleteAll(List<String> list);
	
public List<RefrigeratorDTO> getLowrStockItems(String userid);

	public List<GoodsDTO> getAllStock();
	
	public List<RefrigeratorDTO> getAllrStock();
}
