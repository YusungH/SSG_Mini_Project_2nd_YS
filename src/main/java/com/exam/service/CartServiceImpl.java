package com.exam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.exam.dto.CartDTO;
import com.exam.dto.GoodsDTO;
import com.exam.dto.RefrigeratorDTO;
import com.exam.mapper.CartMapper;
@Service
@Transactional
public class CartServiceImpl implements CartService {

    private final CartMapper mapper;

    @Autowired
    public CartServiceImpl(CartMapper mapper) {
        this.mapper = mapper;
    }


    @Override
    public List<RefrigeratorDTO> getLowrStockItems(String userid) {
        return mapper.getLowrStockItems(userid);  // 냉장고 재고 부족 아이템
    }

    // 그 외 다른 메서드들은 그대로 유지
    @Override
    public List<GoodsDTO> getAllStock() {
        return mapper.getAllStock();
    }

    @Override
    public List<RefrigeratorDTO> getAllrStock() {
        return mapper.getAllrStock();
    }

    @Override
    public int cartAdd(CartDTO dto) {
        return mapper.cartAdd(dto);
    }

    @Override
    public List<CartDTO> cartList(String userid) {
        return mapper.cartList(userid);
    }

    @Override
    public int cartDelete(int num) {
        return mapper.cartDelete(num);
    }

    @Override
    public int cartDeleteAll(List<String> list) {
        return mapper.cartDeleteAll(list);
    }
}

