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
        <link rel='stylesheet' type='text/css' href='./css/stylesheet.css'>
    </head>  
    <%
        double uW=Double.parseDouble(request.getParameter("hoursW"));
        double uP=Double.parseDouble(request.getParameter("hoursP"));
        double preD=Double.parseDouble(request.getParameter("preDeduct"));
        double postD=Double.parseDouble(request.getParameter("postDeduct"));
        double grossPay=0;
        double taxAmount=0;
        double otHours=0;
        double otPayRate=0;
        double postTaxPay=0;
        double netPay=0;
        double regularHours=40;
        double regularPay=0;
        double otPay=0;
        if(uW>40){
            otHours=uW-regularHours;
            otPayRate=uP*1.5;
            otPay=otHours*otPayRate;
            regularPay=regularHours*uP;
            grossPay=regularPay+otPay;}
        else{
           grossPay=uW*uP;
        }
        double taxablePay=grossPay-preD;
        if(grossPay<500){
            taxAmount=Math.round(taxablePay*0.18);
        }
        else{
            taxAmount=Math.round(taxablePay*0.22);
        }
            postTaxPay=taxablePay-taxAmount;
      
        netPay=postTaxPay-postD;
        
    %>
    <body background="calculation.jfif">
        <div style="text-align:center">
            <div class="info">
                <h1>Salary Info Table</h1>
                <p>**For better result, tax amount is rounded to neared integer**</p>
                 <table style="width:100%">
                     <tr>
                    <th>Total Hours Worked</th>
                    <td><%=uW%></td>
                     </tr>
                     <tr>
                    <th>Hourly Pay</th>
                    <td>$<%=uP%></td>
                     </tr><tr>
                    <th>#Hours Overtime</th>
                    <td><%=otHours%></td></tr>
                     <tr>
                    <th>Overtime Hourly Rate</th>
                    <td>$<%=otPayRate%></td></tr>
                     <tr>
                    <th>Gross Pay</th>
                    <td>$<%=grossPay%></td></tr>
                     <tr>
                    <th>Pre-tax Deduct</th>
                    <td>$<%=preD%></td></tr>
                     <tr>
                    <th>Tax Amount</th>
                    <td>$<%=taxAmount%></td></tr>
                     <tr>
                    <th>Post-tax Pay</th>
                    <td>$<%=postTaxPay%></td></tr>
                   <tr>
                    <th>Post-tax Deduct</th>
                    <td>$<%=postD%></td></tr>
                   <tr>
                    <th>Net Pay</th>
                    <td>$<%=netPay%></td></tr>
                    </table>
            </div>
        </div> 
    </body>
</html>
