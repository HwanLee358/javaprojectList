<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="../includes/header.jsp"></jsp:include>
<h3>상세화면</h3>
<c:choose>
	<c:when test="${empty result}">
		<p>조회된 결과가 없습니다</p>
	</c:when>
	<c:otherwise>
		<form name="myFrm">
			<input type="hidden" name="bno" value="${result.boardNO }">
			<input type="hidden" name="page" value="${page }">			
		</form>
		<table class="table">
			<tr>
				<th style="width: 10%">글 제목</th>
				<td colspan="3">${result.title }</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td colspan="3">${result.writer }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td style="height: 200px" colspan="3">
					${result.content } <br>
					<c:choose>
						<c:when test="${not empty result.img }">
							<img src="images/${result.img }" width="200" height="150"/>
						</c:when>
					</c:choose>
				</td>
			</tr>
			<tr>
				<th>작성일시</th>			
				<td><fmt:formatDate value="${result.createDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<th>조회수</th>
				<td>${result.viewCnt }</td>
			</tr>
			<tr align="center">
				<td colspan="4">
					<button class="btn btn-primary" id="modBtn">수정</button>
					<button class="btn btn-danger">삭제</button>
				</td>
			</tr>
		</table>
	</c:otherwise>
</c:choose>
<script src="js/board.js"></script>
<jsp:include page="../includes/footer.jsp"></jsp:include>