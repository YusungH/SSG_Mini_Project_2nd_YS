package com.exam.controller;

import java.io.File;
import java.io.IOException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.exam.dto.GoodsDTO;
import com.exam.service.GoodsService;

@Controller
public class GoodsController {

    private final GoodsService goodsService;

    public GoodsController(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    // 상품 추가 폼 페이지로 이동 (GET 요청)
    @GetMapping("/addGoods")
    public String showAddGoodsPage() {
        return "addGoods"; // addGoods.jsp 페이지로 이동
    }

    
    
    
    
    
    @PostMapping("/addGoods")
    public String addGoods(@ModelAttribute GoodsDTO goodsDTO,
                           @RequestParam(value = "fileImage", required = false) MultipartFile file) {

        // 상품 코드가 없으면 폼으로 리디렉션
        if (goodsDTO.getgCode() == null || goodsDTO.getgCode().isEmpty()) {
            return "redirect:/addGoods";
        }

        try {
            // 파일이 업로드되지 않았을 경우 예외 처리
            if (file == null || file.isEmpty()) {
                System.out.println("파일이 업로드되지 않았습니다.");
                return "redirect:/addGoods";
            }

            // 파일을 C:/upload/ 디렉토리에 저장
            String uploadDir = "C:/upload/images/items/";  // C:/upload/images/items/ 폴더에 저장
            File dir = new File(uploadDir);
            if (!dir.exists()) {
                dir.mkdirs(); // 경로가 없다면 생성
            }

            // 사용자가 입력한 gImage 값 사용 (파일명 지정)
            String customFilename = goodsDTO.getgImage();

            // 파일 확장자 추출
            String originalFilename = file.getOriginalFilename();
            String extension = "";
            if (originalFilename != null && originalFilename.contains(".")) {
                extension = originalFilename.substring(originalFilename.lastIndexOf("."));
            }

            // 최종 저장될 파일명: 사용자가 입력한 gImage + 확장자
            String finalFilename = customFilename + extension;

            // 파일 저장
            File saveFile = new File(uploadDir, finalFilename);
            file.transferTo(saveFile);

            // 파일명을 DTO에 저장 (확장자 제외된 파일명만 저장)
            goodsDTO.setgImage(customFilename);  // 확장자 제외된 파일명만 저장

            // DB에 상품 추가
            goodsService.addGoods(goodsDTO);

        } catch (IOException e) {
            e.printStackTrace();
        }

        return "redirect:/main"; // 성공 시 메인 페이지로 이동
    }

    // 상품 상세 조회
    @GetMapping("/goodsRetrieve")
    public ModelAndView goodsRetrieve(@RequestParam(required = false) String gCode, Model m) {
        // gCode가 없으면 세션에서 가져옴
        if (gCode == null) {
            gCode = (String) m.getAttribute("gCode");
        }

        // 상품 목록에서 자세히 보기 요청 시 gCode를 세션에 저장
        m.addAttribute("gCode", gCode);

        GoodsDTO dto = goodsService.goodsRetrieve(gCode);

        ModelAndView mav = new ModelAndView();
        mav.addObject("goodsRetrieve", dto);
        mav.setViewName("goodsRetrieve");

        return mav;
    }
}
