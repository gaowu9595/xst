<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2016/4/5
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加成功</title>
    <script language="javascript">

        setTimeout(function(){
            location.href="${rootPath}/admin/news/list";

        },1000);
    </script>
</head>
<body>
${Msg}
</body>
</html>
