
<%@ page contentType="text/html;charset=UTF-8" language="java"
pageEncoding="UTF-8" isELIgnored="false" %>

<title>Aime-toi天猫&nbsp;&nbsp;分类:${c.name}</title>

<div id="category">
    <div class="categoryPageDiv">
        <img src="img/category/${c.id}.jpg">
        <%@ include file="sortBar.jsp"%>
        <%@ include file="productsByCategory.jsp"%>
    </div>
</div>

