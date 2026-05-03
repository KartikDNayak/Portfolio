<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Portfolio</title>

<style>

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
  font-family: 'Segoe UI', sans-serif;
  background: var(--bg);
  color: var(--text);
  transition: 0.35s;
}

/* MAIN SECTION */
.main-parent{
 display:flex;
 justify-content:space-around;
 align-items:center;
 padding:150px 20px 90px;
 flex-wrap:wrap;
 gap:55px;
}

.left-main img{
   width:280px;
   border-radius:22px;
   box-shadow:0 12px 28px var(--shadow);
}

.img{
   background: var(--card);
   padding:12px;
   border-radius:18px;
   border:1px solid var(--border);
}

.right-main{
 max-width:560px;
}

.right-main h1{
 font-size:52px;
 line-height:1.2;
 letter-spacing:0.5px;
}

.right-main span{
 color:var(--primary);
}

.right-main h2{
 margin-top:10px;
 font-size:22px;
 font-weight:600;
 color:var(--secondary);
}

.right-main p{
 margin-top:14px;
 line-height:1.7;
 font-size:16px;
 opacity:0.95;
}

/* BUTTONS */
.btn-group{
 display:flex;
 gap:15px;
 margin-top:22px;
 flex-wrap:wrap;
}

.btn-group a{
 text-decoration:none;
}

.btn-group button{
 padding:12px 22px;
 border-radius:12px;
 border:none;
 font-size:15px;
 cursor:pointer;
 transition:0.3s;
}

.btn-primary{
 background:var(--primary);
 color:white;
 box-shadow:0 8px 18px rgba(152, 37, 152, 0.3);
}

.btn-primary:hover{
 background:var(--secondary);
 transform:translateY(-2px);
}

.btn-secondary{
 background:transparent;
 border:2px solid var(--primary);
 color:var(--primary);
 font-weight:600;
}

.btn-secondary:hover{
 background:var(--primary);
 color:white;
 transform:translateY(-2px);
}

/* RESPONSIVE */
@media(max-width:992px){
  .right-main h1{
    font-size:42px;
  }

  .left-main img{
    width:240px;
  }
}

@media(max-width:768px){
  .main-parent{
    flex-direction:column;
    text-align:center;
    padding:140px 15px 70px;
  }

  .right-main{
    max-width:100%;
  }

  .btn-group{
    justify-content:center;
  }
}

@media(max-width:600px){
  .left-main img{
    width:200px;
  }

  .right-main h1{
    font-size:32px;
  }

  .right-main h2{
    font-size:18px;
  }

  .right-main p{
    font-size:14px;
  }

  .btn-group{
    flex-direction:column;
    width:100%;
  }

  .btn-group button{
    width:100%;
  }
}

</style>
</head>

<body>

<%@ include file="./WEB-INF/views/nav.jsp" %>

<main>

<div class="main-parent">

 <div class="left-main">
   <div class="img">
     <img src="./static/user1.PNG" />
   </div>
 </div>
 
 <div class="right-main">

    <h1>
        Hi, I am <span>Kartik Nayak</span>
    </h1>

    <h2>Java Full Stack Developer</h2>

    <p>
        I build scalable web applications using 
        <b>Java, Spring Boot, REST APIs</b>, and modern frontend technologies.
        Passionate about creating clean UI, secure backend systems, and high-performance applications.
    </p>

    <div class="btn-group">

        <!-- DOWNLOAD CV -->
        <a href="./static/Kartik_Nayak_Resume.pdf" download>
            <button class="btn-primary">Download CV</button>
        </a>

        <!-- GO TO SERVICES PAGE -->
        <a href="services">
            <button class="btn-secondary">View Projects</button>
        </a>

    </div>

 </div>

</div>

</main>

<%@ include file="./WEB-INF/views/footer.jsp" %>

</body>
</html>