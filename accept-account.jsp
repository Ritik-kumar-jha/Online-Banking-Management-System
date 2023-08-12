<%@ include file="../../menu.jsp" %>
<html>
 <body onload="makeActive('transfer')">
 <form action="transfer-money.jsp"> 
  <table class='ta'>
    <tr>
     <td class='td'>Enter account number:</td>
     <td class='td'><input type='number' id="accountNo" name='accountNo' class='tb' required></td>
     <td class='td'><button class='bt'>Submit</button></td>
    </tr>
   </table>
  </form> 
 </body>
</html>