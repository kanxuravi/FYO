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
  width: 10%;
  font-size:16px;
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
}
</style>
</head>
<body>
    <br><div><center><h1 id="font1">FYO <br>( FIND YOUR OFFICERS )</h1></center></div><br><br><br>
    <p><center><h2 style='font-family:"Oxygen"'>Officer's Portal</h2></center></p>

<center ><form action="fetch" method="post" style='font-family:"Oxygen"'>
  

  <div class="container">
      <div>
  <input type="radio" id="av" name="presence"
         checked>
  <label for="av" style='font-family:"Oxygen"'>Available</label>
</div>

<div>
  <input type="radio" id="nav" name="presence">
  <label for="nav" >Not-Available</label>
</div>

  </div>
        
        <div ><input type="submit" value="Submit"></div>

  
    </form></center>

</body>
</html>
