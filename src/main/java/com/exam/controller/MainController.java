package com.exam.controller;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.dto.GoodsDTO;
import com.exam.dto.MemberDTO;
import com.exam.dto.RefrigeratorDTO;
import com.exam.service.CartService;
import com.exam.service.GoodsService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {

    private final GoodsService goodsService;
    private final CartService cartService;

    public MainController(GoodsService goodsService, CartService cartService) {
        this.goodsService = goodsService;
        this.cartService = cartService;
    }
    @GetMapping("/main")
    public String main(@RequestParam(required = false, defaultValue = "Dairy") String gCategory,
                       HttpServletRequest request, HttpSession session) {

        // 특정 카테고리의 상품 목록 조회
        List<GoodsDTO> goodsList = goodsService.goodsList(gCategory);

        // 로그인된 사용자 확인
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String userId = null;

        if (authentication != null && authentication.isAuthenticated()) {
            Object principal = authentication.getPrincipal();
            
            if (principal instanceof MemberDTO) {
                userId = ((MemberDTO) principal).getUserid(); // MemberDTO에서 userid 가져오기
            } else if (principal instanceof User) {
                userId = ((User) principal).getUsername(); // Spring Security의 UserDetails 사용
            } else if (principal instanceof String) {
                userId = (String) principal; // String 타입인 경우
            }
            
            session.setAttribute("userId", userId); // 세션에 저장하여 JSP에서도 사용 가능
        }

        // 상품 리스트를 request에 설정
        request.setAttribute("goodsList", goodsList);
        request.setAttribute("userId", userId); // request에도 저장

        if (userId != null) {
            // 냉장고 재고 부족 목록 조회
            List<RefrigeratorDTO> lowStockRefrigeratorItems = cartService.getLowrStockItems(userId);
            List<RefrigeratorDTO> allrStock = cartService.getAllrStock();

            // 조회된 정보를 request에 설정
            request.setAttribute("lowStockRefrigeratorItems", lowStockRefrigeratorItems);
            request.setAttribute("allrStock", allrStock);
            request.setAttribute("lowrStockItems", lowStockRefrigeratorItems);

            // 재고 부족 알림 여부 설정
            boolean hasLowStock = lowStockRefrigeratorItems != null && !lowStockRefrigeratorItems.isEmpty();
            request.setAttribute("hasLowrStock", hasLowStock);
        } else {
            request.setAttribute("hasLowrStock", false);
        }

        return "main";
    }

}
