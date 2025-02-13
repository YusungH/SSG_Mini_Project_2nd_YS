<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {

		const categories = {
			'Dairy' : '달걀/유제품',
			'Fruit' : '과일',
			'Fish' : '생선/해산물',
			'Frozen' : '냉동식품',
			'Meat' : '육류',
			'Sauce' : '소스/조미료',
			'Side dish' : '반찬',
			'Snack' : '과자',
			'Vegetable' : '채소/신선식품'
		};

		$(".badge").each(function() {
			var engCategory = $(this).text();
			if (categories[engCategory]) {
				$(this).text(categories[engCategory]);
			}
		})
	});
</script>
<div class="container">
	<div class="row">
		<!-- 상품 목록을 반복하여 출력 -->
		<c:forEach var="dto" items="${ goodsList }">
			<div class="col border border-secondary m-4 w-80 p-3 rounded bg-white">
			<div class="d-flex justify-content-center">
				<a href="goodsRetrieve?gCode=${ dto.gCode }"><img src="images/items/${ dto.gCode }.png" width="220px" style="margin-top: 10px;"></a>
			</div>
			<div class="mt-2 fs-6 badge rounded-pill text-bg-light">${ dto.gCategory }</div>
			<div class="mt-2 fs-6 ps-2">${ dto.gName }</div>
			<div class="mt-2 fs-6 ps-2">${ dto.gPrice } 원</div>
			<div class="mt-2 fs-6 ps-2">${ dto.gContent }</div>
			</div>
		</c:forEach>
		<c:if test="${isAdmin}">
			<!-- admin 아이디인 경우에만 보이는 콘텐츠 -->
			<form action="/addGoods" method="POST">
				<button type="submit" class="btn btn-primary">상품 추가</button>
			</form>
		</c:if>
	</div>
</div>
