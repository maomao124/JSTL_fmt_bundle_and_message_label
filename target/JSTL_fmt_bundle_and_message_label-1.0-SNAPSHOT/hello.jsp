<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_fmt_bundle_and_message_label
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2022/1/2
  Time(创建时间)： 21:28
  Description(描述)：
  JSTL <fmt:bundle> 标签用来绑定数据源（.properties）文件，JSTL <fmt:message> 标签用来从指定的资源文件中调用信息。
JSP <fmt:bundle> 标签的语法如下：
<fmt:bundle basename="resourceName" prefix="pre">
    代码块
</fmt:bundle>
其中：
basename：指定要绑定的数据源 .properties 文件的名称；
prefix：用来获取 .properties 文件的前缀。
JSP <fmt:message> 标签的语法如下：
<fmt:message key="messageName" [var="varname"] [bundle="resourceName"] [scope="page|request|session|application"] />
其中：
[ ]：[ ]中的内容为可选项；
key：指定需要从 .properties 文件中取出的键名称；
bundle：绑定的数据源 .properties 的文件名；
varname：用于保存取出的键值；
scope：设置标签的有效范围。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<fmt:bundle basename="myresource" prefix="my.">
    <fmt:message key="no" var="no"/>
    <fmt:message key="name" var="name"/>
    <fmt:message key="sex" var="sex"/>
    <fmt:message key="age" var="age"/>
</fmt:bundle>
<h2>
    学号：
    <c:out value="${no}" escapeXml="true" default=""/>
    <br/>
    姓名：
    <c:out value="${name}" escapeXml="true" default=""/>
    <br/>
    性别：
    <c:out value="${sex}" escapeXml="true" default=""/>
    <br/>
    年龄：
    <c:out value="${age}" escapeXml="true" default=""/>

</h2>

</body>
</html>
