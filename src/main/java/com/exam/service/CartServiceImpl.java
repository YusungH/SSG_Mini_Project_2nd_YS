package com.exam.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.exam.dto.CartDTO;
import com.exam.dto.GoodsDTO;
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

    // 장바구니에 담겨 있는 상품 중에서 재고가 10개 이하인 상품을 확인하는 메서드
    public List<CartDTO> getLowStockItems(String userid) {
        // 사용자가 장바구니에 담은 상품 리스트 가져오기
        List<CartDTO> cartItems = mapper.cartList(userid);
        List<CartDTO> lowStockItems = new ArrayList<>();

        int test = 0;
        // 장바구니에 담긴 각 상품의 재고 상태를 확인
        for (CartDTO item : cartItems) {
            for (GoodsDTO goods : item.getGoodsList()) {
             //   if (goods.getStock() <= 10) {  // 재고가 10개 이하인 상품을 lowStockItems 리스트에 추가
            	 if (test <= 10) {    
            	lowStockItems.add(item);
            	test++;
                    break; // 하나라도 10개 이하인 물품이 있으면 해당 CartDTO를 추가하고 더 이상 확인하지 않음
                }
            }
        }

        return lowStockItems;
    }
}
