<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="false"
    errorPage="error.jsp"
    %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Contact</title>

<style>

/* PURPLE THEME */
:root{
  --bg: #F1E9E9;
  --text: #15173D;
  --primary: #982598;
  --secondary: #E491C9;
  --card: #ffffff;
  --border: rgba(152, 37, 152, 0.25);
  --shadow: rgba(21, 23, 61, 0.15);
}

/* DARK MODE */
.dark{
  --bg: #15173D;
  --text: #F1E9E9;
  --primary: #982598;
  --secondary: #E491C9;
  --card: rgba(255,255,255,0.06);
  --border: rgba(241, 233, 233, 0.15);
  --shadow: rgba(0,0,0,0.6);
}

*{
  margin:0;
  padding:0;
  box-sizing:border-box;
}

body{
  font-family:'Segoe UI', sans-serif;
  background:var(--bg);
  color:var(--text);
  transition:0.35s;
}

/* CONTACT WRAPPER */
.contact-wrapper{
  width:85%;
  margin:120px auto 70px;
  background:var(--card);
  border:1px solid var(--border);
  border-radius:22px;
  box-shadow:0 12px 28px var(--shadow);
  display:flex;
  justify-content:space-between;
  align-items:center;
  gap:40px;
  padding:50px;
  flex-wrap:wrap;
}

/* LEFT SIDE */
.left-contact{
  flex:1;
  min-width:280px;
}

.left-contact h1{
  font-size:40px;
  font-weight:900;
  margin-bottom:12px;
}

.left-contact h1 span{
  color:var(--primary);
}

.left-contact p{
  font-size:15px;
  line-height:1.7;
  opacity:0.85;
  margin-bottom:25px;
}

/* FORM */
form{
  display:flex;
  flex-direction:column;
  gap:18px;
}

input, textarea{
  width:100%;
  padding:12px 14px;
  border-radius:12px;
  border:1px solid var(--border);
  background:transparent;
  color:var(--text);
  outline:none;
  font-size:14px;
  transition:0.3s;
}

textarea{
  resize:none;
  height:120px;
}

input:focus, textarea:focus{
  border:1px solid var(--primary);
  box-shadow:0 0 10px rgba(152, 37, 152, 0.25);
}

/* ERROR TEXT */
.error-msg{
  color:red;
  font-size:13px;
  font-weight:600;
  display:none;
}

/* BUTTON */
.submit-btn{
  padding:12px;
  border:none;
  border-radius:14px;
  background:var(--primary);
  color:white;
  font-weight:800;
  font-size:15px;
  cursor:pointer;
  transition:0.3s;
  box-shadow:0 8px 18px rgba(152, 37, 152, 0.3);
}

.submit-btn:hover{
  background:var(--secondary);
  transform:translateY(-2px);
}

/* RIGHT SIDE IMAGE */
.right-contact{
  flex:1;
  text-align:center;
  min-width:280px;
}

.right-contact img{
  width:100%;
  max-width:350px;
  border-radius:18px;
  box-shadow:0 12px 25px var(--shadow);
}

/* RESPONSIVE */
@media(max-width:992px){
  .contact-wrapper{
    flex-direction:column;
    text-align:center;
    padding:40px 25px;
  }

  .left-contact h1{
    font-size:32px;
  }
}

@media(max-width:600px){
  .contact-wrapper{
    width:92%;
    padding:35px 20px;
  }

  .left-contact h1{
    font-size:28px;
  }

  .submit-btn{
    width:100%;
  }
}

</style>
</head>

<body>

<%@ include file="nav.jsp" %>

<div class="contact-wrapper">

  <div class="left-contact">
    <h1>Contact <span>Me</span></h1>

    <p>
      Have a project idea or want to connect?  
      Feel free to send a message and I will get back to you soon.
    </p>

    <form action="client" method="POST" onsubmit="return validateForm()">

      <input type="text" placeholder="Enter your name" name="name" id="name">
      <span class="error-msg" id="nameError">Please enter your name</span>

      <input type="email" placeholder="Enter your email" name="email" id="email">
      <span class="error-msg" id="emailError">Please enter a valid email</span>

      <textarea placeholder="Enter your message" name="message" id="message"></textarea>
      <span class="error-msg" id="msgError">Please enter your message</span>

      <input class="submit-btn" type="submit" value="Submit Message">

    </form>

  </div>

  <div class="right-contact">
    <img src="/MyPortfolioWebsite/static/contact-icon.PNG" />
  </div>

</div>

<%@ include file="footer.jsp" %>

<script>
function validateForm(){

  let name = document.getElementById("name").value.trim();
  let email = document.getElementById("email").value.trim();
  let message = document.getElementById("message").value.trim();

  let nameError = document.getElementById("nameError");
  let emailError = document.getElementById("emailError");
  let msgError = document.getElementById("msgError");

  // hide errors first
  nameError.style.display = "none";
  emailError.style.display = "none";
  msgError.style.display = "none";

  let valid = true;

  if(name === ""){
    nameError.style.display = "block";
    valid = false;
  }

  if(email === "" || !email.includes("@") || !email.includes(".")){
    emailError.style.display = "block";
    valid = false;
  }

  if(message === ""){
    msgError.style.display = "block";
    valid = false;
  }

  return valid;
}
</script>

</body>
</html>