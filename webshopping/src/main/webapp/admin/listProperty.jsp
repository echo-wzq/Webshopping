
<%@ page contentType="text/html;charset=UTF-8" language="java"
    pageEncoding="UTF-8" isELIgnored="false" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<html>
<script>
    $(function(){
        $("#addForm").submit(function(){
            if(!checkEmpty("name", "属性名称"))
                return false;
            return true;
        });
    });
</script>
<head>
    <title>属性管理</title>
</head>
<body>
    <div class="workingArea">
        <%-- 面包屑导航       --%>
        <ol class="breadcrumb">
            <li>
                <a href="admin_category_list">所有分类</a>
            </li>
            <li>
                <a href="admin_property_list?cid=${c.id}">${c.name}</a>
            </li>
            <li class="active">
                属性管理
            </li>
        </ol>
            
        <%-- 数据显示区域           --%>
        <div class="listDataTableDiv">
            <table class="table table-striped table-bordered table-hover table-condensed">
                <thead>
                    <tr class="success">
                        <th>ID</th>
                        <th>属性名称</th>
                        <th>编辑</th>
                        <th>删除</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${ps}" var="p">
                        <tr>
                            <td>${p.id}</td>
                            <td>${p.name}</td>
                            <td>
                                <a href="admin_property_edit?id=${p.id}"><span class="glyphicon glyphicon-edit"></span></a>
                            </td>
                            <td>
                                <a deleteLink="true" href="admin_property_delete?id=${p.id}"><span class="glyphicon glyphicon-trash"></span></a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        
        <%-- 分页操作           --%>
        <div class="pageDiv">
            <%@include file="../include/admin/adminPage.jsp"%>
        </div>

        <%-- 新增属性面板           --%>
        <div class="panel panel-info addDiv">
            <div class="panel-heading">新增属性</div>
            <div class="panel-body">
                <form method="post" id="addForm" action="admin_property_add" enctype="multipart/form-data">
                    <table class="addTable">
                        <tr>
                            <td>属性名称</td>
                            <td>
                                <input id="name" name="name" type="text" class="form-control">
                            </td>
                        </tr>
                        <tr class="submitTR">
                            <td colspan="2" align="center">
                                <input type="hidden" name="cid" value="${c.id}">
                                <button type="submit" class="btn btn-success">提 交</button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>

    </div>
</body>
<%@include file="../include/admin/adminFooter.jsp"%>
</html>
