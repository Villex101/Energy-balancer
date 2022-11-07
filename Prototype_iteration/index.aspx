<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Prototype_iteration.index1" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title></title>
    <link rel="stylesheet" href="stylesheet.css">
  </head>
  <body>
    <header>
      <div class="containerMain" style="width:79%;" ;>
        <div class="price">
          <p>Average Unit Price 80.05€</p>
          <div class="date">
            <p></p>
          </div>
        </div>
        <asp:Literal ID="username" runat="server" />
      </div>
    </header>
    <nav>
      <div class="containerMain">
        <form id="form1" runat="server">
          <asp:Button OnClick="login_check" Text="Login" ID="login" runat="server" CssClass="buttonLog_in" />
          <div class="box" style="height:0px;" CssClass="buttonLogin"></div>
          <div class="boxright">
            <div class="container2">
              <select class="buttonCacu" name="hour" id="hour">
                <option value="0">Pick a hour</option><% for (int i =1; i < 25; i++) Response.Write("<option value=" +i+">" + i+ "</option>");%>
              </select>
        </form>
        <div class="box" style="height:50px;"></div>
        <a href="graph.aspx">
          <button class="buttonData">Get data</button>
        </a>
      </div>
      </div>
      <div class="boxleft"></div>
      <p class="percentMinus"></p>
      <table>
        <tr>
          <td></td>
          <td>Minimum</td>
          <td>Maximum</td>
          <td>Average</td>
        </tr>
        <tr>
         
                   	<%  string t = "<td>";
                        string d = "</td>";
                        string tr = "<tr>";
                        string tr_ = "</tr>";
                        string production = "Production";

                        int min_production =5901;
                        int max_production =8712;
                        int average_production =7429;

                        Response.Write(t);            Response.Write(production);            Response.Write(d);
                        Response.Write(t);            Response.Write(min_production);            Response.Write(d);
                        Response.Write(t);            Response.Write(max_production);            Response.Write(d);
                        Response.Write(t);            Response.Write(average_production);        Response.Write(d);
                        Response.Write(tr_);


                        Response.Write(tr);
                        string consumption = "Consumption";
                        int min_consumption =7927;
                        int max_consumption =9863;
                        int average_consumption =9054;

                        Response.Write(t);            Response.Write(consumption);                Response.Write(d);
                        Response.Write(t);            Response.Write(min_consumption);            Response.Write(d);
                        Response.Write(t);            Response.Write(max_consumption);            Response.Write(d);
                        Response.Write(t);            Response.Write(average_consumption);        Response.Write(d);
                        Response.Write(tr_);



                        Response.Write(tr);
                        
                                   
                        string shortage_surplus = "Shortage/Surplus";
                        double min_diff =min_production - min_consumption;                                    
                        double max_diff =max_production - max_consumption;                 
                        double average_diff =average_production - average_consumption;     
                        
                      /*double min_percent =min_production / min_consumption;                      
                        double max_percent =max_production / max_consumption;              
                        double average_percent =average_production / average_consumption;    
                        */
                         string percentMin = "<p class=\"percentMinus\">  "+ 25 +"%</p>";                                                             
                         string percentMax = "<p class=\"percentMinus\">  "+ 11 +"%</p>"; 
                        string percentAverage = "<p class=\"percentMinus\">  "+ 11 +"%</p>"; 
                
                        Response.Write(t);            Response.Write(shortage_surplus);                 Response.Write(d);
                        Response.Write(t);            Response.Write(min_diff + percentMin);            Response.Write(d);
                        Response.Write(t);            Response.Write(max_diff + percentMax);            Response.Write(d);
                        Response.Write(t);            Response.Write(average_diff + percentAverage);    Response.Write(d);
                        Response.Write(tr_);


                        Response.Write(tr);
                        string cost = "Cost";
                        double min_cost =2.74;
                        double max_cost =16.12;
                        double average_cost =13.52;

                        Response.Write(t);            Response.Write(cost);                           Response.Write(d);
                        Response.Write(t);            Response.Write(min_cost+ "snt/kwh");            Response.Write(d);
                        Response.Write(t);            Response.Write(max_cost+ "snt/kwh");            Response.Write(d);
                        Response.Write(t);            Response.Write(average_cost+ "snt/kwh");        Response.Write(d);
                        Response.Write(tr_);


       %>
          </table>
      </nav>
   <footer>
         <p></p>
   </footer>
 </body>
</html>

