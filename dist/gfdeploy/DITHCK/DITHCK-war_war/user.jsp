<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=ZCOOL+KuaiLe" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet">
        <link href="view1.css" rel="stylesheet">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password], input[type=submit] {
    font-family: Oxygen;
    font-size:16px;
  width: 10%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}


button {
  background-color: rgb(63, 61, 190);
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f4365f;
}
.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
  
  select{
      font-size: 18px;
  }
}
</style>
</head>
<body>
    <br><div><center><h1 id="font1">FYO <br>( FIND YOUR OFFICERS )</h1></center></div><br><br><br>
<p><center><h2 style='font-family:"Oxygen"'>User's Portal</h2></center></p>

<form action="fetch" method="post">
    <br>
    <div style='font-size:20px;'><center style='font-family:"Oxygen"'><b>Please Select Your City:</b>
            <select name ="city" style='font-size: 20px; font-family:"Oxygen", Sans-Serif;'>
        <option disabled selected>Select your City </option>
               <% 
         try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");
            String s ="select * from City";
            PreparedStatement pst=con.prepareStatement(s);
            ResultSet rst=pst.executeQuery();
            while(rst.next())
                     {
                 %>
        <option value="<%= rst.getInt(1)%>"><%= rst.getString(2)%></option>
        <%
                     }
            con.close();
        }
          catch(Exception e){
           out.println(e);
        }
        %>
        
    </select></center>
        </div>
    <br>
    <div style='font-size:20px;'><center style='font-family:"Oxygen"'><b>Please Select Your Municipality:</b>
            <select style='font-size: 20px; font-family:"Oxygen", Sans-Serif;' name="mun">
        <option disabled selected>Select your Municipality </option>
        
        <% 
         try{ 
            String city=request.getParameter("city");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");
            String s ="select * from Municipality where Mun_CityId = '"+city+"'";
            PreparedStatement pst=con.prepareStatement(s);
            ResultSet rst=pst.executeQuery();
            while(rst.next())
                     {
                 %>
        <option value="<%= rst.getInt(1)%>"><%= rst.getString(2)%></option>
        <%
                     }
            con.close();
        }
          catch(Exception e){
           out.println(e);
        }
        %>        
    </select></center>
        </div>
    <br>
    <div style='font-size:20px;'><center style='font-family:"Oxygen"'><b>Please Select the office:</b>
            <select style='font-size: 20px; font-family:"Oxygen", Sans-Serif;'>
        <option disabled selected>Select the office </option>
        <% 
         try{ String mun = request.getParameter("mun");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");
            String s ="select * from office where off_MunId = '"+mun+"'";
            PreparedStatement pst=con.prepareStatement(s);
            ResultSet rst=pst.executeQuery();
            while(rst.next())
                     {
                 %>
        <option value="<%= rst.getInt(1)%>"><%= rst.getString(2)%></option>
        <%
                     }
            con.close();
        }
          catch(Exception e){
           out.println(e);
        }
        %> 
        
    </select></center>
        </div>

    <center><input type="submit" value="Find Out"></center>
  
</form>

</body>
</html>
