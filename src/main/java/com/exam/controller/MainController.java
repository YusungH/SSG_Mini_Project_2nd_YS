package com.exam.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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

    // 메인 페이지에 상품 목록과 재고 알림을 출력하는 메서드
    @GetMapping("/main")
    public String main(@RequestParam(required = false, defaultValue = "All") String gCategory,
            HttpServletRequest request, HttpSession session,
            Model model) {

    	List<GoodsDTO> goodsList;
    	
    	if (gCategory.equals("All")) {
    		// RequestParam이 없는 경우 = 전체 카테고리 조회하기
    		goodsList = goodsService.getAllStock();
    	} else {
    		// RequestParam이 있는 경우 = 해당 카테고리 조회
    		goodsList = goodsService.goodsList(gCategory);
    	}

        // 로그인된 사용자 확인
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String userId = null;
        boolean isAdmin = false;

        if (authentication != null && authentication.isAuthenticated()) {
            Object principal = authentication.getPrincipal();

            if (principal instanceof MemberDTO) {
                userId = ((MemberDTO) principal).getUserid(); // MemberDTO에서 userid 가져오기
            } else if (principal instanceof User) {
                userId = ((User) principal).getUsername(); // Spring Security의 UserDetails 사용
            } else if (principal instanceof String) {
                userId = (String) principal; // String 타입인 경우
            }

            // 로그인된 사용자 정보를 model에 전달
            model.addAttribute("login", new User(userId, "", new ArrayList<>())); // User 객체 생성
            
            // 세션과 request에 사용자 정보 저장
            session.setAttribute("userId", userId);
            request.setAttribute("userId", userId);
            request.setAttribute("isAdmin", isAdmin);

            // admin 여부 체크
            if ("admin".equals(userId)) {
                isAdmin = true;
            }
        }

        // 상품 리스트를 request에 설정
        request.setAttribute("goodsList", goodsList);
        request.setAttribute("userId", userId); // request에도 저장
        request.setAttribute("isAdmin", isAdmin); // admin 여부를 request에 저장

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

        return "main"; // 메인 페이지로 이동
    }

    // 파일 업로드 처리 메서드
    @PostMapping("/upload")
    public String uploadFile(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
        String uploadDir = "C:/upload/images/items";  // 업로드 디렉토리 설정
        File dir = new File(uploadDir);

        // 디렉토리가 없으면 생성
        if (!dir.exists()) {
            dir.mkdirs();
        }

        // 업로드할 파일 경로 설정
        File destinationFile = new File(uploadDir + "/" + file.getOriginalFilename());

        try {
            // 파일 저장
            file.transferTo(destinationFile);
            request.setAttribute("message", "파일 업로드 성공!");
        } catch (IOException e) {
            e.printStackTrace();
            request.setAttribute("message", "파일 업로드 실패!");
        }

        return "redirect:/main"; // 업로드 후 메인 페이지로 리다이렉트
    }
}
