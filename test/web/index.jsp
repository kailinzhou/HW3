<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' type='text/css' href='./css/stylesheet.css'>
        <title>Hello</title>
    </head>
    
    <body>
        <h1>Salary Calculator</h1>
        <hr>
        <form name='demoForm' action ='result.jsp' method='post'>
                <label>Hours Worked:</label><input clss='num' type='double' name='hoursW' value='' size='50'>
                <br>
                <label>Hourly Pay:</label><input clss='num' type='double' name='hoursP' value='' size='50'>
                <br>
                <label>Pre-tax Deduct:</label><input clss='num' type='double' name='preDeduct' value='' size='50'>
                <br>
                <label>Post-tax Deduct:</label><input clss='num' type='double'name='postDeduct' value='' size='50'>
                <br> <input type='submit' value='submit' id='submit'>
                <br> <input type='reset' value='reset' id='clear'>
            </form>
    </body>
</html>
