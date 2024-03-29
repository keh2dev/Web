<%@page import="com.multi.mvc200.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
$(function() {
	$('#b1').click(function() {
		//1. 화면을 이동하지 않고, 서버에 insert해달라고 요청
		//2. 성공하면, result아래에 append!
		content = $('#reply').val()
		writer = "apple"
		// 로그인 세션 잡혀있을 경우 writer = ${id}
		$.ajax({
			url : "insert4",
			data : {
				bbsno : ${bag.no},
				content : content,
				writer : writer
			},
			success : function() {
				alert('성공')
				$('#result').append(writer + " / " + content + "<br>")
				$('#reply').val('') 
				//val() : 입력한 값을 가지고온다.
				//val('~~~') : ~~값을 input의 value에 넣는다!
			},
			error : function() {
				alert('실패')
			}
		})
	})
})
</script>
<style>
body {
	background: pink;
}
</style>
</head>
<body>게시물검색 처리 요청이 완료되었습니다.<br>
<a href="bbs.jsp"><button>첫페이지로</button></a>
<a href="list2.multi"><button>게시물리스트로</button></a>
<hr>
<table border="1">
	<tr>
		<td>
		no
		</td>
		<td>
		${bag.no}
		</td>
	</tr>
	<tr>
		<td>
		title
		</td>
		<td>
		${bag.title}
		</td>
	</tr>
	<tr>
		<td>
		content
		</td>
		<td>
		${bag.content}
		</td>
	</tr>
		<tr>
		<td>
		writer
		</td>
		<td>
		${bag.writer}
		</td>
	</tr>
</table>
<hr>
<%
	String id = (String)session.getAttribute("id");
	BbsVO bag = (BbsVO)request.getAttribute("bag");
	String writer = bag.getWriter();
	if(id != null){
	if(id.equals(writer)){
%>
<a href="delete2.multi?no=${bag.no}"><button>삭제</button></a>
<a href="update22.multi?no=${bag.no}"><button>수정</button></a>
<hr color="red">
<% }} %>

<!-- result내에 댓글 리스트 -->
<div id="result">
<c:forEach items="${list}" var="bag">
${bag.writer} / ${bag.content} <br>
</c:forEach>
</div>
<hr>
댓글달기 <input id="reply"> <button id="b1">댓글달기</button><br>

</body>
</html>