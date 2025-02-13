<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {

		$("#up").on("click", function() {

			var gAmount = $("#gAmount").val();
			$("#gAmount").val(Number.parseInt(gAmount) + 1);
		});

		$("#down").on("click", function() {

			var gAmount = Number.parseInt($("#gAmount").val());
x	
			if (gAmount == 1) {
				$("#gAmount").val(1);
			} else {
				$("#gAmount").val(gAmount - 1);
			}
		});

		$("#cartBtn").on("click", function() {
			//event.preventDefault();
			var f = $("form")[0];
			f.action = "cartAdd";
			f.method = "GET";
		});

	});//end ready
</script>
<div class="container">
    <div>${errorMessage}</div>
    <form class="row g-3 m-4">
        <input type="hidden" name="gCode" value="${ goodsRetrieve.gCode }">
        <div class="row">
            <div class="col-md-6">
                <img src="images/items/${ goodsRetrieve.gImage }.png" class="card-img-top" alt="...">
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 25rem;">
                    <div class="card-body">
                        <h6 class="card-title pb-2"><span class="fw-light">제품코드: ${ goodsRetrieve.gCode }</span></h6>
                        <h6 class="card-text pb-2"><span class="fw-bold">${ goodsRetrieve.gName }</span></h6>
                        <h6 class="card-text pb-4"><span class="fw-normal">${ goodsRetrieve.gContent }</span></h6>
                        <h6 class="card-text"><span class="fw-bold ">가격: </span> ${ goodsRetrieve.gPrice } 원</h6>
                        <hr>
                        <div class="text-center">
                            <span class="fw-bold">주문수량:</span> <input type="text" name="gAmount" value="1" id="gAmount">
                            <img src="images/up.PNG" id="up">
                            <img src="images/down.PNG" id="down">
                            <div class="text-center">
                                <button class="btn btn-primary mt-3">구매</button>
                                <button class="btn btn-primary mt-3" id="cartBtn">장바구니</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
