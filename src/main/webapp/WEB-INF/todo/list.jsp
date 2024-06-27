<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List Page</h1>

${list}

<%--EL을 이용한 출력--%>

<%--10개의 TodoDTO 중 첫 번째 TodoDTO의 tno와 title 출력--%>
${list[0].tno} --- ${list[0].title}

<h3>${1 + 2 + 3}</h3>
<H3>${"AAA" += "BBB"}</H3>
<H3>${"AAA".equals("AAA")}</H3>

<%--동일한 결과--%>
<h4>${list[0].title}</h4>
<h4>${list[0].getTitle()}</h4>

<%--JSP파일에서 JSTL사용하기--%>

<%--<c:forEach> 반복문 사용--%>
<ul>
    <c:forEach var="dto" items="${list}">
        <li>${dto}</li>
    </c:forEach>
</ul>

<%--begin/end 이용한 반복문--%>
<ul>
    <c:forEach var="num" begin="1" end="10">
        <li>${num}</li>
    </c:forEach>
</ul>

<%--<c:if> 제어문 사용 --%>
<c:if test="${list.size() % 2 == 0}">
    짝수
</c:if>
<c:if test="${list.size() % 2 != 0}">
    홀수
</c:if>

<%--<c:choose> 제어문 사용--%>
<c:choose>
    <c:when test="${list.size() % 2 == 0}">
        짝수
    </c:when>
    <c:when test="${list.size() % 2 == 0}">
        홀수
    </c:when>
</c:choose>

<%--<c:set> 사용하여 변수 생성--%>
<c:set var="target" value="5"></c:set>

<ul>
    <c:forEach var="num" begin="1" end="10">
        <c:if test="${num == target}">
            num is target
        </c:if>
    </c:forEach>
</ul>
</body>
</html>
