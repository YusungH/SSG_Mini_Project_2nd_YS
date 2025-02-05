package com.exam.controller;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.exam.dto.MemberDTO;
import com.exam.service.StockService;

import jakarta.servlet.http.HttpSession;
@Controller
public class DashboardController {

    private final StockService stockService; // 재고 서비스 주입

    // 생성자 주입
    public DashboardController(StockService stockService) {
        this.stockService = stockService;
    }

    // 대시보드 페이지로 이동
    @GetMapping("/dashboard")
    public String dashboard(HttpSession session, Model model) {
        // Spring Security에서 인증된 사용자 정보 가져오기
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            MemberDTO member = (MemberDTO) auth.getPrincipal(); // 인증된 사용자의 정보를 가져옴

            // 세션에서 lowStockItems 가져오기
            List<String> lowStockItems = (List<String>) session.getAttribute("lowStockItems");
            model.addAttribute("lowStockItems", lowStockItems); // 모델에 lowStockItems 추가

            return "dashboard"; // dashboard.jsp 페이지로 이동
        } else {
            return "redirect:/login"; // 로그인되지 않은 경우 로그인 페이지로 리다이렉트
        }
    }
}