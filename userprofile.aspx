<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="Techneuron_CRUD_OPERATION_PROJECT.userprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
.outer{
  height: 100vh;
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: rosybrown;
}
#switch:checked ~ .outer{
  background: #092c3e;
}
.content{
  display: flex;
  width: 650px;
  padding: 15px;
  background-color: beige;
  border-radius: 12px;
  position: relative;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
  height:380px;
}
#switch:checked ~ .outer .content{
  background: #092c3e;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.5);
}
.outer .toggle{
  position: absolute;
  width: 40px;
  height: 20px;
  border-radius: 20px;
  background: #092c3e;
  right: 15px;
  top: 13px;
  display: flex;
  align-items: center;
  cursor: pointer;
}
#switch:checked ~ .outer .toggle{
  background: #fff;
}
.outer .toggle .circle{
  margin-left: 3px;
  height: 16px;
  width: 16px;
  border-radius: 50%;
  background: #fff;
  transition: all 0.3s ease;
}
#switch:checked ~ .outer .circle{
  margin-left: 22px;
  background: #092c3e;
}
.image-box {
  height: 232px;
  width: 200px;
  border-radius: 12px;
  padding: 3px;
  background: #092c3e;
}
.image-box img {
  height: 100%;
  width: 100%;
  object-fit: cover;
  border: 3px solid #fff;
  border-radius: 12px;
}
#switch:checked ~ .outer .image-box{
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
}
#switch:checked ~ .outer .image-box img{
  border-color: transparent;
}
.content .details{
  width: 58%;
  margin: 10px 0 20px 20px;
  color: #092c3e;
}
#switch:checked ~ .outer .details{
  transition: 0.1s;
  color: #fff;
}
.content .details .name{
  font-size: 23px;
  font-weight: 600;
}
.content .details .job{
  font-size: 18px;
  font-weight: 500;
}
.content .details p{
 font-size: 15px;
 margin-top: 6px;
}
.content button{
  display: block;
  margin-top: 16px;
  outline: none;
  border: none;
  font-size: 17px;
  padding: 6px 14px;
  border-radius: 6px;
  color: #fff;
  cursor: pointer;
  background: #092c3e;
  transition: all 0.3s ease;
}
.content button:hover{
  transform: scale(0.97);
}
#switch:checked ~ .outer button{
  background: #fff;
  color: #092c3e;
}
.media-icons{
  position: absolute;
  bottom: 16px;
  right: 15px;
  margin-top: 12px;
  justify-content: flex-end;
}
.media-icons i{
  display: inline-flex;
  margin: 0 4px;
  font-size: 16px;
  color: #092c3e;
  opacity: 0.7;
  cursor: pointer;
}
.media-icons i:hover{
  opacity: 1;
}
#switch:checked ~ .outer i{
  color: #fff;
  opacity: 1;
}
#switch{
  display: none;
}
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            position: absolute;
            top: 284px;
            left: 112px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 300px;
            left:30px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 260px;
            left: 81px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 114px;
            left: 108px;
            z-index: 1;
            bottom: 87px;
        }
        .auto-style7 {
            position: absolute;
            top: 200px;
            left: 113px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 30px;
            left: 107px;
            z-index: 1;
        }
        .auto-style9 {
            width: 96px;
        }
        .auto-style10 {
            z-index: 1;
            height: 340px;
            position: absolute;
            top: 20px;
            left: 237px;
            width: 397px;
            background-color:blanchedalmond;
        }
        bg-dark {
            --bs-bg-opacity: 1;
            background-color: rgba(var(--bs-dark-rgb),var(--bs-bg-opacity)) !important;
            margin-top: -675px;
        }
        .boot{
            margin-top:-700px;

        }
        .auto-style6 {
    position: absolute;
    top: 579px;
    left: 845px;
    z-index: 1;
    background-color: blanchedalmond;
    border: none;
    border-radius: 5px;
}



        
          .auto-style11 {
              position: absolute;
              top: 117px;
              left: 110px;
              z-index: 1;
              width: 68px;
          }



        
        </style>
    
</head>
<body style="background-color:pink;">
    <form id="form1" runat="server">
        <div>
            
 <div class="container">
   <input type="checkbox" id="switch">
  <div class="outer">
    <div class="content">
      <div class="image-box">
        <asp:Image ID="Image1" runat="server" CssClass="auto-style1"/>
         
      </div>
      <div class="details">
           <table class="auto-style10">
     
        <asp:Label ID="Label3" runat="server" CssClass="auto-style5"></asp:Label>
       <asp:Label ID="Label2" runat="server" CssClass="auto-style4" ></asp:Label>
     
     <tr>
         <td class="auto-style9">email</td>
         <td><asp:Label ID="Label6" runat="server" CssClass="auto-style8"></asp:Label></td>
     </tr>
     <tr>
         <td class="auto-style9">phone</td>
        <td><asp:Label ID="Label7" runat="server" CssClass="auto-style11" Text="Label"></asp:Label></td>
     </tr>
     <tr>
         <td class="auto-style9">age</td>
         <td><asp:Label ID="Label5" runat="server" CssClass="auto-style7"></asp:Label></td>
     </tr>
     <tr>
         <td class="auto-style9">username</td>
         <td><asp:Label ID="Label1" runat="server" CssClass="auto-style3"></asp:Label></td>
     </tr> 
               
 </table>
       
      
      </div>
      <div class="media-icons">
        <i class="fab fa-facebook-f"></i>
        <i class="fab fa-twitter"></i>
        <i class="fab fa-linkedin-in"></i>
      </div>
    </div>
  </div>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Text="EDIT" OnClick="Button1_Click" style="height: 29px" />
            
            
        </div>
            
        </div>
        
            
    </form>
</body>
</html>
