<%-- 
    Document   : results
    Created on : Feb 20, 2018, 11:50:55 AM
    Author     : kzhou8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
    </head>  
    <%
        double uW=Double.parseDouble(request.getParameter("hoursW"));
        double uP=Double.parseDouble(request.getParameter("hoursP"));
        double preD=Double.parseDouble(request.getParameter("preDeduct"));
        double postD=Double.parseDouble(request.getParameter("postDeduct"));   
    %>
    <body>
        <h1>Salary Info</h1>
        <hr>  
         <label>Total Hours Worked:</label><input clss='num' type='double' name='hWork' value='' size='50'>
         <br>
         <label>Hourly Rate:</label><input clss='num' type='double' name='hRate' value='' size='50'>
         <br>
         <label># Hours Overtime</label><input clss='num' type='double' name='overHours' value='' size='50'>
         <br>
         <label>Overtime Hourly Rate</label><input clss='num' type='double'name='overRate' value='' size='50'>
         <br>
         <label>Gross Pay:</label><input clss='num' type='double'name='gPay' value='' size='50'>
         <br>
         <label>Pre-tax Deduct:</label><input clss='num' type='double'name='preDeduct' value='' size='50'>
         <br>
         <label>Pre-tax Pay:</label><input clss='num' type='double'name='prePay' value='' size='50'>
         <br>
         <label>Tax Amount:</label><input clss='num' type='double'name='taxAm' value='' size='50'>
         <br>
         <label>Post-tax Pay:</label><input clss='num' type='double'name='postPay' value='' size='50'>
         <br>
         <label>Post-tax Deduct:</label><input clss='num' type='double'name='postDeduct' value='' size='50'>
         <br>
         <label>Net Pay:</label><input clss='num' type='double'name='netPay' value='' size='50'>
         
</html>
