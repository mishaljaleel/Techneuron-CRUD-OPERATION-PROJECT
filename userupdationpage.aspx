<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userupdationpage.aspx.cs" Inherits="Techneuron_CRUD_OPERATION_PROJECT.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        .auto-style1 {
            width: 35%;
            height: 538px;
            align-content:center;
            position: absolute;
            top: 147px;
            left: 470px;
            z-index: 1;
            background-color:#FCF6F5FF;
        }
        .auto-style2 {
            width: 736px;
        }
        .first{
             Height:43px; 
             Width:289px;
          

        }
        .second{
            height: 58px;
            width: 585px;

        }
        .auto-style4 {
            width: 736px;
            height: 30px;
        }
        .auto-style5 {
            height: 30px;
        }
        .auto-style6 {
            position: absolute;
            top: 104px;
            left: 641px;
            z-index: 1;
        }
   
        .auto-style7 {
            position: absolute;
            top: 561px;
            left: 122px;
            z-index: 1;
        }
        body{
            background-color:#FAEBEFFF;
        }

   
    </style>
    <script language="javascript">


    function checkin() {
        var a = "";
        var b = "";
        a = document.getElementById("TextBox4").value;
        b = a.length;
        if (b < 8 ) {
            document.getElementById('Label1').innerHTML = "Enter 10 Numbers";
        }
        else if (b == 8) {
            document.getElementById('Label1').innerHTML = "Enter one more Number";

        }
        else if (b == 9) {
            document.getElementById('Label1').innerHTML = "";

        }
        else if(b>9){
            alert("enter numbers 10 only");
            document.getElementById('Label1').innerHTML = "";
        }
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
        y = document.getElementById("TextBox7").value;
        x = document.getElementById("TextBox6").value;
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
 >
    <form id="form1" runat="server">
        <div>
            
            </div>
           
<table class="auto-style1">
        <tr>
            <td colspan="2" style="text-align:center;" >UPDATE YOUR PROFILE</td>
           
        </tr>
        <tr>
            <td class="auto-style4">NAME</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" class="first"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style2">AGE</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" class="first"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">DISCRIPTION</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" class="first"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">PHONE</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" class="first"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">EMAIL</td>
            <td>
                 <asp:TextBox ID="TextBox5" runat="server" class="first"></asp:TextBox>
               
            </td>
        </tr>
        <tr>
            <td class="auto-style2">PASSWORD</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" class="first"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">CONFIRM PASSWORD</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" class="first"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><asp:Button ID="Button1" runat="server" CssClass="auto-style11" Text="UPDATE" OnClick="Button1_Click1" style="z-index: 1; position: absolute; top: 530px; left: 135px" /></td>
            <td> <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Text="CLEAR"  OnClientClick="return validate();" OnClick="Button2_Click" style="z-index: 1; position: absolute; top: 530px; left: 261px" /></td>
        </tr>

         <tr>
            <td colspan="2">

                <asp:HyperLink ID="HyperLink1" runat="server" class="first" NavigateUrl="userprofile.aspx" CssClass="auto-style7">BACK TO YOUR PROFILE</asp:HyperLink>

              </td>
             </tr>
    </table>
         <asp:Label ID="Label1" runat="server" BackColor="Red" CssClass="auto-style6" ForeColor="White"></asp:Label>
        <p>
            
        </p>
        <p>
            
        </p>
             
    </form>
    </body>
</html>
