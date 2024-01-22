<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Techneuron_CRUD_OPERATION_PROJECT.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
   body{
margin: 0;
padding: 0;
display: flex;
justify-content: center;
align-items: center;
min-height: 100vh;
font-family: 'Jost', sans-serif;
background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);
}
.main{
	width: 350px;
	height: 750px;
	background: red;
	overflow: hidden;
	background: url("https://doc-08-2c-docs.googleusercontent.com/docs/securesc/68c90smiglihng9534mvqmq1946dmis5/fo0picsp1nhiucmc0l25s29respgpr4j/1631524275000/03522360960922298374/03522360960922298374/1Sx0jhdpEpnNIydS4rnN4kHSJtU1EyWka?e=view&authuser=0&nonce=gcrocepgbb17m&user=03522360960922298374&hash=tfhgbs86ka6divo3llbvp93mg4csvb38") no-repeat center/ cover;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
}
#chk{
	display: none;
}
.signup{
	position: relative;
	width:100%;
	height: 100%;
	
}
label{
	color: #fff;
	font-size: 2.3em;
	justify-content: center;
	display: flex;
	margin: 60px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}
.label1{
		font-size: 2.3em;
	justify-content: center;
	display: flex;
	margin: 60px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
	margin-left:10px;
	margin-top: 21px;

}
.input{
	width: 60%;
	height: 18px;
	background: #e0dede;
	justify-content: center;
	display: flex;
	margin: 8px auto;
	padding: 10px;
	border: none;
	outline: none;
	border-radius: 5px;
}
.inputt{
	width: 60%;
	height: 20px;
	background: #e0dede;
	justify-content: center;
	display: flex;
	margin: 20px auto;
	padding: 10px;
	border: none;
	outline: none;
	border-radius: 5px;
}
input{
	width: 60%;
	height: 20px;
	background: #e0dede;
	justify-content: center;
	display: flex;
	margin: 20px auto;
	padding: 10px;
	border: none;
	outline: none;
	border-radius: 5px;
}
.button{
	width: 60%;
	height: 40px;
	margin: 10px auto;
	justify-content: center;
	display: block;
	color: #fff;
	background: #573b8a;
	font-size: 1em;
	font-weight: bold;
	margin-top: 45px;
	outline: none;
	border: none;
	border-radius: 5px;
	transition: .2s ease-in;
	cursor: pointer;
}
.button:hover{
	background: #6d44b8;
}
.login{
	height: 460px;
	background: #eee;
	border-radius: 60% / 10%;
	transform: translateY(-170px);
	transition: .8s ease-in-out;
}
.login label{
	color: #573b8a;
	transform: scale(.6);
}

#chk:checked ~ .login{
	transform: translateY(-500px);
}
#chk:checked ~ .login label{
	transform: scale(1);	
}
#chk:checked ~ .signup label{
	transform: scale(.6);
}


 </style>
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
<script language="javascript">
	  function checkin() {
      var a = "";
      var b = "";
      a = document.getElementById("TextBox4").value;
      b = a.length;
      if (b < 8) {
          document.getElementById('Label1').innerHTML = "Enter 10 Numbers";
      }
      else if (b == 8) {
          document.getElementById('Label1').innerHTML = "Enter one more Number";

      }
      else if (b == 9) {
          document.getElementById('Label1').innerHTML = "";

      }
	  else if(b > 9)

	         alert("please 10 enter number only");

      else {
          alert("verified");

      }


  }
  function passwordcheck() {

      var p = "";
      var l = "";
      var a = "";
      var s = "";
      var x = "";
      var y = "";
      y = document.getElementById("TextBox10").value;
      x = document.getElementById("TextBox7").value;
      p = x.length;
      if (p < 8) {
          l = 0;


      }
      else if (x == "")
          l = 0;
      else {
          l = 1;

      }

      if ((/[a-z]/.test(x)) && (/[A-Z]/.test(x))) {
          a = 1;

      }
      else
          a = 0;
      if (/[^a-zA-Z0-9]/.test(x)) {
          s = 1;

      }
      else
          s = 0;

      if (l == 1 && a == 1 && s == 1) {

          if (x !== y)
              alert("passwords mismatched");
          else if (x == y)
              alert("password verified successfully");

      }

      else {
          if (l == 0)
              alert("password must be atleast 8 characters");
          else if (a == 0)
              alert("password contain atleast 1 uppercase and lowercase letter ");
          else if (s == 0)
              alert("password contain atleast 1 special character ");
      }
  }
 
  function mailval() {
      var id = "";
      var id1 = "";
      var id2 = "";
      var id3 = "";
      var id4 = "";
      id = document.getElementById("TextBox5").value;
      var id1 = id.indexOf("@");
      var id2 = id.indexOf(".");
      var id3 = id.charAt(0);
      var id4 = id.length;
      if ((id1 >= 1) && (id2 > id1 + 5) && (isNaN(id3)) && (((id2 + 3) == (id4 - 1)) || ((id2 + 2) == (id4 - 1)))) {
          document.getElementById("Label1").innerHTML = "good";
          alert("Email Entered Succesfully");

      }
      else {
          alert("please check your Email");
      }

  }
  function validate() {

      mailval();
      passwordcheck();


  }

</script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
			<asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="White"></asp:Label>
			<input type="checkbox" id="chk" aria-hidden="true">
			
		<div class="signup"><form>
		<div style="margin-top:-25px;">
				<div><label class="label1" for="chk" aria-hidden="true">Sign up</label></div>
				<div style="margin-top:-54px;">
				<asp:TextBox ID="TextBox1" CssClass="input" runat="server" type="text" name="txt" placeholder="NAME" ></asp:TextBox>
				
				<asp:TextBox ID="TextBox2" CssClass="input" runat="server" type="text" name="AGE" placeholder="AGE" ></asp:TextBox>
				
				<asp:TextBox ID="TextBox3" CssClass="input" runat="server" name="pswd" placeholder="DISCRIPTION" ></asp:TextBox>
					<asp:TextBox ID="TextBox4"  CssClass="input" runat="server" type="number" name= "phn" placeholder="PHONE NUMBER" ></asp:TextBox>
				<asp:FileUpload ID="FileUpload1" CssClass="input" runat="server" name="file" placeholder="IMAGE" />
					<asp:TextBox ID="TextBox5" CssClass="input" runat="server"  name="email" placeholder="EMAIL" ></asp:TextBox>
				
                <asp:TextBox ID="TextBox6" CssClass="input" runat="server" type="text" name="txt" placeholder="User name" ></asp:TextBox>
				<asp:TextBox ID="TextBox7" CssClass="input" runat="server" type="password" name="pswd" placeholder="Password" ></asp:TextBox>
				<asp:TextBox ID="TextBox10" CssClass="input" runat="server" type="password" name="pswd" placeholder="Confirm Password" ></asp:TextBox>
					<asp:Button ID="Button1" runat="server" Text="SIGN UP" OnClientClick="return validate();" CssClass="button" OnClick="Button1_Click1" />
			
				<asp:Button ID="Button2" CssClass="button" runat="server" Text="RESET" OnClick="Button2_Click1"/>
				</div>
			    </div>
			
			</form>
			</div>
			<div class="login">

		<label for="chk" aria-hidden="true">Login</label>
		
		<asp:TextBox ID="TextBox8" CssClass="inputt" runat="server" type="Text" name="username" placeholder="User name" ></asp:TextBox>
		<asp:TextBox ID="TextBox9" CssClass="inputt" runat="server" type="password" name="pswd" placeholder="Password" ></asp:TextBox>
		<asp:Button ID="Button3" CssClass="button"  runat="server" Text="Login As User" OnClick="Button3_Click1"></asp:Button>
		<asp:Button ID="Button4" CssClass="button" runat="server" Text="Login As Admin" OnClick="Button4_Click" />
		

</div>
        </div>
    </form>
</body>
</html>
