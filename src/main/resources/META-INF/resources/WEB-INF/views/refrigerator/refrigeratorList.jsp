<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<script>

   const categoriesKr = {
      'DA': '달걀/유제품',
      'FR': '과일',
      'FS': '생선/해산물',
      'FZ': '냉동식품',
      'MT': '육류',
      'SC': '소스/조미료',
      'SI': '반찬',
      'SN': '과자',
      'VG': '채소/신선식품'
   };
   const categoriesEng = {
      'DA': 'Diary',
      'FR': 'Fruit',
      'FS': 'Fish',
      'FZ': 'Frozen',
      'MT': 'Meat',
      'SC': 'Sauce',
      'SI': 'Side dish',
      'SN': 'Snack',
      'VG': 'Vegetable'
   };
   
   $(document).ready(function() {

      // 하단 냉장고 상품 추가 선택 시
      $("#add_gCode").on("change", function() {
         var imageName = $("#add_gCode").val();
         $("#addItemImage").attr("src", "images/items/" + imageName + ".png");
         
         // 상품 이름 입력
         var itemName = $(this).find('option:selected').text()
         $("#add_gName").val(itemName);
         
         // 상품코드 칸에 입력
         $("#viewCode").val(imageName);
         
         // 카테고리 칸에 입력
         var codePrefix = imageName.substring(0, 2); // 상품 코드 앞 2자리 추출
         var categoryKrName = categoriesKr[codePrefix]; // 보여주는 카테고리 이름
         $("#viewCategory").val(categoryKrName);
         
         var categoryEngName = categoriesEng[codePrefix]; // 저장할 카테고리 이름
         $("#viewCategory2").val(categoryEngName);
         
      });

      // 변경 사항 저장
//       $("save").on("click", function() {
//         var f = $("form")[0];
//         f.action = "save";
//         f.method = "get";
//         f.submit();
//      });
      
      // 내 냉장고에 상품 추가하기
      $("#addRef").on("click", function(){
         var f = $("form")[1];
         f.action = "refrigeratorAdd";
         f.method = "get";
         f.submit();
      });
      
      // 수량 변경 버튼 클릭 이벤트 처리
      $(".btn-success").on("click", function(){
         event.preventDefault();
         var row = $(this).closest("tr");
         var gCode = row.find("img#gCode").attr("src").split("/").pop();
         var amount = row.find("input#amount").val();
         var queryString = "gCode=" + gCode + "&amount=" + amount;
         var url = "updateRefrigeratorStock?" + queryString;
         location.href = url;
      });
   });//end ready
</script>

<form>
   <div class="TodoApp">
      <div class="container">
         <div>
            <table class="table align-middle text-center">
               <thead>
                  <tr>
                     <th>번호</th>
                     <th>상품명</th>
                     <th>재고 수량</th>
                     <th>수량 변경</th>
                     <th>삭제</th>
                  </tr>
               </thead>
               <tbody>
                  <c:forEach var="item" items="${ refrigeratorList }">
                  <tr>
                     <td>${ item.num }</td>
                     <td><img src="images/items/${ item.gCode }.png" width="160" height="160" id="gCode"><br>${ item.gName }</td>
                     <td><input type="number" name="stock" id="amount" value="${ item.rStock }" style="text-align: right;" size="3" min="0" max="99"> <br><br>
                     </td>
                     <td>
                        <button class="btn btn-success">수량 변경</button>
                     </td>
                     <td>
                        <a href="refrigeratorDelete?num=${ item.num }" class="btn btn-warning">삭제</a>
                     </td>
                  </tr>
                  </c:forEach>
               </tbody>
               
            </table>
         </div>
         
      </div>
   </div>
</form>

<form>
   <div class="container">
      <div class="TodoApp">
         <p class="text-center">${ error }<br>추가할 새로운 상품과 수량을 선택하세요.</p>
         <table class="table align-middle text-center">
            <thead>
               <tr>
                  <th>상품코드</th>
                  <th>카테고리</th>
                  <th>상품 이미지</th>
                  <th>상품명</th>
                  <th>수량(1~99)</th>
                  <th>저장</th>
                  <th>초기화</th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td>
                     <input type="text" name="gCode" id="viewCode" value="" size="7">
                  </td>
                  <td>
                     <input type="text" name="viewCategory" id="viewCategory" value="" size="12">
                     <input type="hidden" name="gCategory" id="viewCategory2" value="" size="12">
                  </td>
                  <td><img src="images/items/DA-0001.png" width="100" height="100"
                     id="addItemImage" alt="상품 이미지">
                  </td>
                  <td>
                     <select name="itemName" id="add_gCode" size="7">
                           <option value="DA-0001">슬라이스 치즈</option>
                           <option value="DA-0002">달걀</option>
                           <option value="FR-0001">귤</option>
                           <option value="FR-0002">토마토</option>
                           <option value="FS-0001">고등어</option>
                           <option value="FS-0002">낙지</option>
                           <option value="FZ-0001">군만두</option>
                           <option value="FZ-0002">감자튀김</option>
                           <option value="MT-0001">닭가슴살</option>
                           <option value="MT-0002">돼지고기 앞다리살</option>
                           <option value="SC-0001">굴소스</option>
                           <option value="SC-0002">다진마늘</option>
                           <option value="SI-0001">김치</option>
                           <option value="SI-0002">찜닭</option>
                           <option value="SN-0001">크림빵</option>
                           <option value="SN-0002">감자칩</option>
                           <option value="VG-0001">양배추</option>
                           <option value="VG-0002">콩나물</option>
                     </select>
                     <input type="hidden" value="" name="gName" id="add_gName">
                  </td>
                  <td><input type="number" min="1" max="99" name="rStock" id="add_rStock" value="1" size="2"></td>
                  <td><button type="button" class="btn btn-outline-success" id="addRef">저장</button></td>
                  <td><button type="button" class="btn btn-outline-danger">초기화</button></td>
               </tr>
            </tbody>
         </table>
      </div>
   </div>
</form>