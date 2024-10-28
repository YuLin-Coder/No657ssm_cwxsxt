$(function() {
	$('#pay').click(function() {
		var loc = $("input[name='basepath']").val();
		var ordersid = $("input[name='ordersid']").val();
		$.ajax({
			type : "POST",
			url : loc + "ajax/pay.action?id=" + ordersid,
			contentType : "application/json; charset=utf-8",
			dataType : "text",
			success : function(json) {
			},
			error : function() {
				alert("ajax请求发生错误3");
			}
		});
	});
})