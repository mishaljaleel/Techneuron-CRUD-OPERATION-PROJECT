<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aboutme.aspx.cs" Inherits="Techneuron_CRUD_OPERATION_PROJECT.aboutme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        * {
  font-family: Nunito, sans-serif;
}

.text-blk {
  margin-top: 0px;
  margin-right: 0px;
  margin-bottom: 0px;
  margin-left: 0px;
  padding-top: 0px;
  padding-right: 0px;
  padding-bottom: 0px;
  padding-left: 0px;
  line-height: 25px;
}

.responsive-container-block {
  min-height: 75px;
  height: fit-content;
  width: 100%;
  padding-top: 10px;
  padding-right: 10px;
  padding-bottom: 10px;
  padding-left: 10px;
  display: flex;
  flex-wrap: wrap;
  margin-top: 0px;
  margin-right: auto;
  margin-bottom: 0px;
  margin-left: auto;
  justify-content: flex-start;
}

.responsive-container-block.bigContainer {
  padding-top: 10px;
  padding-right: 30px;
  padding-bottom: 10px;
  padding-left: 30px;
  background-image: url("https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb29.png");
  background-position-x: initial;
  background-position-y: initial;
  background-size: cover;
  background-attachment: initial;
  background-origin: initial;
  background-clip: initial;
  background-color: initial;
  background-repeat-x: no-repeat;
  background-repeat-y: no-repeat;
}

.responsive-container-block.Container {
  max-width: 800px;
  flex-direction: column;
  align-items: center;
  padding-top: 20px;
  padding-right: 20px;
  padding-bottom: 20px;
  padding-left: 20px;
  margin-top: 150px;
  margin-right: auto;
  margin-bottom: 150px;
  margin-left: auto;
  background-color: white;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
  border-bottom-right-radius: 10px;
  border-bottom-left-radius: 10px;
}

.text-blk.heading {
  font-size: 36px;
  line-height: 45px;
  font-weight: 800;
  margin-top: 0px;
  margin-right: 0px;
  margin-bottom: 30px;
  margin-left: 0px;
}

.text-blk.subHeading {
  text-align: center;
  font-size: 18px;
  line-height: 26px;
  margin-top: 0px;
  margin-right: 0px;
  margin-bottom: 60px;
  margin-left: 0px;
}

.socialIcon {
  width: 33px;
  height: 33px;
}

.social-icons-container {
  display: flex;
  flex-direction: row;
  align-items: flex-start;
}

.social-icon {
  margin: 0 50px 0 50px;
}

.social-icon:hover {
  cursor: pointer;
}

@media (max-width: 768px) {
  .text-blk.heading {
    font-size: 55px;
    line-height: 65px;
  }

  .text-blk.subHeading {
    font-size: 18px;
    line-height: 24px;
  }

  .socialIcon {
    width: 20px;
    height: 20px;
  }

  .text-blk.subHeading {
    line-height: 27px;
  }

  .text-blk.heading {
    font-size: 32px;
    line-height: 40px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 20px;
    margin-left: 0px;
  }

  .social-icon {
    margin: 0 25px 0 25px;
  }
}

@media (max-width: 500px) {
  .responsive-container-block.bigContainer {
    padding-top: 10px;
    padding-right: 20px;
    padding-bottom: 10px;
    padding-left: 20px;
  }

  .text-blk.heading {
    font-size: 45px;
    line-height: 55px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 20px;
    margin-left: 0px;
  }

  .text-blk.subHeading {
    font-size: 14px;
    line-height: 22px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 30px;
    margin-left: 0px;
  }

  .social-icons-container {
    flex-wrap: wrap;
    align-items: center;
    justify-content: center;
  }

  .text-blk.subHeading {
    font-size: 16px;
    line-height: 23px;
  }

  .text-blk.heading {
    font-size: 26px;
    line-height: 30px;
  }

  .social-icon {
    margin: 0 20px 0 20px;
  }
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="responsive-container-block bigContainer">
  <div class="responsive-container-block Container">
    <p class="text-blk heading">
      About
    </p>
    <p class="text-blk subHeading">
    Welcome to our employee Management System, a simple and efficient way to manage your tasks and employees. This web application is built using ASP.NET  and leverages the power of Entity Framework for seamless database interaction. <br>
   <h4>Purpose</h4><br>
   The primary goal of this project is to showcase a basic CRUD (Create, Read, Update, Delete) application with a focus on simplicity, usability, and good coding practices. Whether you're managing tasks or employees, our application provides an intuitive interface to handle your data effectively.<br>
     <h4> Technologies Used</h4><br>

ASP.NET:The framework that powers the web application.<br>
Entity Framework:** Used for database interactions, providing a convenient way to perform CRUD operations.<br>
Bootstrap:** A sleek and responsive CSS framework for a clean and modern user interface.<br>
JavaScript:validation purpose.<br>
        MSSQL:DATABASE.<br>
        HTML,CSS<br>





<h4> Features</h4><br>

Create:Add new tasks or employees effortlessly with our user-friendly interface.<br>
        Read: View a comprehensive list of tasks or employees, complete with details.<br>
        Update: Edit existing tasks or employees seamlessly, keeping your data up-to-date.<br>
        Delete: Remove tasks or employees with ease, ensuring a streamlined management process.<br>


<h4>Validation</h4><br>

Our application includes basic input validation to ensure data integrity. Required fields are clearly marked, and validation errors are handled gracefully to provide a smooth user experience.<br>


This project was developed by MISHALJALEEL P,Iam appreciate the support of the open-source community and welcome contributions to further improve this project.

Thank you for using our Employee Management System!


    </p>
    <div class="social-icons-container">
      <a class="social-icon" href="https://www.linkedin.com/in/mishal-p-446803174">
        <img class="socialIcon image-block" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb33.png">
      </a>
      <a class="social-icon" href="https://www.linkedin.com/in/mishal-p-446803174">
        <img class="socialIcon image-block" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb34.png">
      </a>
      <a class="social-icon" href="https://www.linkedin.com/in/mishal-p-446803174">
        <img class="socialIcon image-block" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb35.png">
      </a>
      <a class="social-icon" href="https://www.linkedin.com/in/mishal-p-446803174">
        <img class="socialIcon image-block" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb36.png">
      </a>
    </div>
  </div>
</div>
        </div>
    </form>
</body>
</html>
