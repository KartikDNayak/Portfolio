<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Projects</title>

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

/* HERO SECTION */
.hero{
  height:300px;
  position:relative;
  margin-top:70px;
  border-radius:0 0 25px 25px;
  overflow:hidden;
}

.hero img{
  width:100%;
  height:100%;
  object-fit:cover;
  filter:brightness(45%);
}

.hero-content{
  position:absolute;
  top:50%;
  left:50%;
  transform:translate(-50%, -50%);
  text-align:center;
  width:90%;
}

.hero-content h1{
  font-size:55px;
  font-weight:900;
  letter-spacing:2px;
  color:var(--secondary);
}

.hero-content p{
  margin-top:18px;
  max-width:900px;
  margin-left:auto;
  margin-right:auto;
  font-size:16px;
  line-height:1.7;
  color:rgba(241,233,233,0.95);
  font-style:italic;
}

.quote-author{
  margin-top:12px;
  font-size:14px;
  font-weight:600;
  color:rgba(241,233,233,0.9);
  letter-spacing:1px;
}

/* PROJECTS SECTION */
.projects-section{
  width:85%;
  margin:70px auto;
  text-align:center;
}

.projects-section h2{
  font-size:40px;
  font-weight:900;
  margin-bottom:12px;
}

.projects-section h2 span{
  color:var(--primary);
}

.projects-section p{
  max-width:800px;
  margin:0 auto 45px;
  font-size:15px;
  opacity:0.9;
  line-height:1.7;
}

/* PROJECT GRID */
.projects-grid{
  display:grid;
  grid-template-columns: repeat(3, 1fr);
  gap:28px;
}

/* CARD */
.project-card{
  background:var(--card);
  border:1px solid var(--border);
  border-radius:18px;
  overflow:hidden;
  box-shadow:0 12px 28px var(--shadow);
  transition:0.35s;
  text-align:left;
}

.project-card:hover{
  transform:translateY(-8px);
  box-shadow:0 0 22px rgba(152, 37, 152, 0.35);
}

.project-card img{
  width:100%;
  height:180px;
  object-fit:cover;
}

.project-content{
  padding:18px;
}

.project-content h3{
  font-size:17px;
  margin-bottom:10px;
  font-weight:800;
  color:var(--text);
}

.project-content p{
  font-size:14px;
  line-height:1.6;
  opacity:0.85;
  margin-bottom:12px;
}

.project-content a{
  text-decoration:none;
  color:var(--primary);
  font-weight:700;
  font-size:14px;
  transition:0.3s;
}

.project-content a:hover{
  color:var(--secondary);
  padding-left:5px;
}

/* RESPONSIVE */
@media(max-width:1100px){
  .projects-grid{
    grid-template-columns: repeat(2, 1fr);
  }
}

@media(max-width:768px){

  .hero-content h1{
    font-size:40px;
  }

  .hero-content p{
    font-size:14px;
  }

  .projects-section{
    width:92%;
  }

  .projects-section h2{
    font-size:32px;
  }

  .projects-grid{
    grid-template-columns: 1fr;
  }
}

@media(max-width:600px){
  .hero{
    height:330px;
  }

  .hero-content h1{
    font-size:34px;
  }
}

</style>
</head>

<body>

<%@ include file="nav.jsp" %>

<!-- HERO SECTION -->
<div class="hero">
    <img src="/MyPortfolioWebsite/static/f4.jpg" alt="Hero Image">

    <div class="hero-content">
        <h1>MY PROJECTS</h1>

        <p>
            "Great software today is often preferable to perfect software tomorrow. 
            If you give your users something to play with early, their feedback will often lead you to a better eventual solution."
        </p>

        <div class="quote-author">
            — Adapted from Agile principles
        </div>
    </div>
</div>


<!-- PROJECTS SECTION -->
<div class="projects-section">

    <h2>Latest <span>Projects</span></h2>

    <p>
        Here are some of my recent works showcasing Java Full Stack Development, responsive UI design,
        and backend API integration.
    </p>

    <div class="projects-grid">

        <div class="project-card">
            <img src="/MyPortfolioWebsite/static/f4.jpg" alt="Project">
            <div class="project-content">
                <h3>Portfolio Website</h3>
                <p>A personal responsive portfolio built using JSP and modern UI design.</p>
                <a href="https://github.com/KartikDNayak?tab=repositories" target="_blank">View Details →</a>
            </div>
        </div>

        <div class="project-card">
            <img src="/MyPortfolioWebsite/static/f4.jpg" alt="Project">
            <div class="project-content">
                <h3>Student Management System</h3>
                <p>A Java + MySQL based system for managing student records with CRUD operations.</p>
                <a href="https://github.com/KartikDNayak?tab=repositories" target="_blank">View Details →</a>
            </div>
        </div>

        <div class="project-card">
            <img src="/MyPortfolioWebsite/static/f4.jpg" alt="Project">
            <div class="project-content">
                <h3>Online Course Platform</h3>
                <p>A mini e-learning platform with course listing, enroll system, and progress tracking.</p>
                <a href="https://github.com/KartikDNayak?tab=repositories" target="_blank">View Details →</a>
            </div>
        </div>

        <div class="project-card">
            <img src="/MyPortfolioWebsite/static/f4.jpg" alt="Project">
            <div class="project-content">
                <h3>Banking Application</h3>
                <p>A banking simulation project with secure transactions and account modules.</p>
                <a href="https://github.com/KartikDNayak?tab=repositories" target="_blank">View Details →</a>
            </div>
        </div>

        <div class="project-card">
            <img src="/MyPortfolioWebsite/static/f4.jpg" alt="Project">
            <div class="project-content">
                <h3>REST API Backend</h3>
                <p>Spring Boot REST API project implementing authentication and CRUD services.</p>
                <a href="https://github.com/KartikDNayak?tab=repositories" target="_blank">View Details →</a>
            </div>
        </div>

        <div class="project-card">
            <img src="/MyPortfolioWebsite/static/f4.jpg" alt="Project">
            <div class="project-content">
                <h3>E-Commerce Web App</h3>
                <p>A full stack shopping app with cart, products listing, and checkout features.</p>
                <a href="https://github.com/KartikDNayak?tab=repositories" target="_blank">View Details →</a>
            </div>
        </div>

    </div>

</div>

<%@ include file="footer.jsp" %>

</body>
</html>