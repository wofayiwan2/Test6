<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>个人所得税计算程序</title>
    <style>
        body {
            background-image: url('https://tse3-mm.cn.bing.net/th/id/OIP-C.NSBi8wbMfjtWyJ4l_f-jjAHaDJ?w=299&h=148&c=7&r=0&o=5&pid=1.7');
            background-size: cover;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            font-size: 18px;
            margin-bottom: 10px;
        }
        input[type="number"] {
            font-size: 18px;
            padding: 10px;
            border-radius: 5px;
            border: none;
            margin-bottom: 20px;
        }
        button[type="submit"] {
            font-size: 18px;
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #4CAF50;
            color: #fff;
            cursor: pointer;
        }
        .result {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>个人所得税计算</h1>
    <h2>202131044119 韩卓远</h2>
    <form action="tax.jsp" method="get">
        <label for="income">请输入您的收入:</label>
        <input type="number" id="income" name="income" required>
        <button type="submit">开始计算查询</button>
    </form>
    <%
        // 获取用户输入的收入金额
        String incomeStr = request.getParameter("income");
        if (incomeStr != null && !incomeStr.isEmpty()) {
            double income = Double.parseDouble(incomeStr);

            // 根据收入金额计算个人所得税
            double tax = income*0.05;

            // 输出计算结果
            System.out.println("<div class=\"result\">");
            System.out.println("Tax: $" + tax);
            System.out.println("</div>");
        }


    %>
</div>
</body>
</html>
