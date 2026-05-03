<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About</title>

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
.about-us{
 height:260px;
 position:relative;
 margin-top:70px;
 border-radius:0 0 25px 25px;
 overflow:hidden;
}

.about-img{
 height:100%;
 width:100%;
 object-fit:cover;
 filter:brightness(50%);
}

.about-head{
 position:absolute;
 top:50%;
 left:50%;
 transform:translate(-50%,-50%);
 color:var(--secondary);
 font-weight:900;
 font-size:55px;
 letter-spacing:2px;
 text-align:center;
 text-transform:uppercase;
}

/* WHO I AM SECTION */
.main-1{
 background:var(--card);
 border:1px solid var(--border);
 border-radius:20px;
 margin:60px auto;
 width:85%;
 padding:60px 30px;
 display:flex;
 justify-content:space-around;
 align-items:center;
 gap:40px;
 flex-wrap:wrap;
 box-shadow:0 12px 28px var(--shadow);
}

.about-left video{
 border-radius:15px;
 border:1px solid var(--border);
 box-shadow:0 10px 25px var(--shadow);
 width:380px;
 max-width:100%;
}

.about-right{
 max-width:520px;
}

.about-right h2{
 color:var(--primary);
 margin-top:10px;
 font-size:22px;
 font-weight:800;
}

.about-right p{
 line-height:1.7;
 margin-top:8px;
 opacity:0.95;
 font-size:15px;
}

/* MY JOURNEY */
.journey-section{
 width:85%;
 margin:70px auto;
 text-align:center;
}

.journey-section h2{
 font-size:40px;
 font-weight:900;
 margin-bottom:40px;
}

.journey-section h2 span{
 color:var(--primary);
}

.journey-container{
 display:flex;
 justify-content:center;
 flex-wrap:wrap;
 gap:40px;
}

/* TIMELINE BOX */
.timeline{
 flex:1;
 min-width:280px;
 max-width:520px;
 background:var(--card);
 border:1px solid var(--border);
 border-radius:20px;
 padding:35px;
 box-shadow:0 12px 28px var(--shadow);
 text-align:left;
}

.timeline h3{
 font-size:22px;
 color:var(--primary);
 margin-bottom:25px;
 text-align:center;
 font-weight:900;
}

/* TIMELINE ITEMS */
.timeline-item{
 border-left:3px solid var(--primary);
 padding-left:18px;
 margin-bottom:22px;
 position:relative;

 opacity:0;
 transform:translateY(25px);
 transition:all 0.8s ease;
}

.timeline-item.show{
 opacity:1;
 transform:translateY(0);
}

.timeline-item::before{
 content:"";
 position:absolute;
 left:-9px;
 top:5px;
 width:14px;
 height:14px;
 border-radius:50%;
 background:var(--secondary);
 border:2px solid var(--primary);
}

.timeline-item h4{
 font-size:16px;
 margin-bottom:6px;
 color:var(--text);
 font-weight:800;
}

.timeline-item p{
 font-size:14px;
 opacity:0.85;
 line-height:1.5;
}

/* MY SKILLS */
.skills-section{
 width:85%;
 margin:70px auto;
 text-align:center;
}

.skills-section h2{
 font-size:40px;
 font-weight:900;
 margin-bottom:40px;
}

.skills-section h2 span{
 color:var(--primary);
}

.skills-container{
 display:flex;
 justify-content:center;
 flex-wrap:wrap;
 gap:40px;
}

.skill-box{
 flex:1;
 min-width:280px;
 max-width:520px;
 background:var(--card);
 border:1px solid var(--border);
 border-radius:20px;
 padding:35px;
 box-shadow:0 12px 28px var(--shadow);
 text-align:left;
}

.skill-box h3{
 text-align:center;
 margin-bottom:20px;
 color:var(--primary);
 font-size:20px;
 font-weight:900;
}

/* SKILL ITEM */
.skill{
 margin-bottom:18px;
}

.skill label{
 font-weight:700;
 font-size:14px;
 display:flex;
 justify-content:space-between;
 margin-bottom:6px;
 opacity:0.9;
}

.progress{
 width:100%;
 height:10px;
 background:rgba(152, 37, 152, 0.15);
 border-radius:20px;
 overflow:hidden;
}

/* SKILLS ANIMATION */
.progress-bar{
 height:100%;
 border-radius:20px;
 width:0%;
 background:linear-gradient(90deg, var(--primary), var(--secondary));
 transition:width 1.8s ease-in-out;
}

/* FOCUS AREAS */
.main-2{
 width:85%;
 margin:70px auto;
 padding:60px 30px;
 background:var(--card);
 border:1px solid var(--border);
 border-radius:20px;
 box-shadow:0 12px 28px var(--shadow);
 text-align:center;
}

.section-title{
 font-size:40px;
 font-weight:900;
 margin-bottom:40px;
}

.section-title span{
 color:var(--primary);
}

/* CARDS */
.teammates{
 display:flex;
 justify-content:center;
 gap:30px;
 flex-wrap:wrap;
}

.card{
 width:230px;
 background:rgba(152, 37, 152, 0.08);
 border:1px solid var(--border);
 border-radius:16px;
 overflow:hidden;
 text-align:center;
 box-shadow:0 10px 25px var(--shadow);
 transition:0.3s;
}

.card:hover{
 transform:translateY(-8px);
 box-shadow:0 0 18px rgba(152, 37, 152, 0.4);
}

.card img{
 width:100%;
 height:190px;
 object-fit:cover;
}

.card h3{
 margin-top:12px;
 font-size:16px;
 color:var(--text);
 font-weight:800;
}

.card p{
 margin-bottom:14px;
 font-size:14px;
 color:var(--primary);
 font-weight:700;
}

/* RESPONSIVE */
@media(max-width:992px){
  .about-head{
    font-size:45px;
  }

  .journey-section h2,
  .skills-section h2,
  .section-title{
    font-size:34px;
  }
}

@media(max-width:768px){

  .about-head{
    font-size:36px;
  }

  .main-1{
    flex-direction:column;
    text-align:center;
    width:92%;
    padding:45px 20px;
  }

  .about-right{
    max-width:100%;
  }

  .journey-section,
  .skills-section,
  .main-2{
    width:92%;
  }
}

@media(max-width:600px){
  .about-head{
    font-size:32px;
  }

  .journey-section h2,
  .skills-section h2,
  .section-title{
    font-size:28px;
  }
}

</style>
</head>

<body>

<%@ include file="nav.jsp" %>

<!-- HERO -->
<div class="about-us"> 
    <img class="about-img" src="/MyPortfolioWebsite/static/bc5.jpg" />
    <h1 class="about-head">ABOUT<br>ME</h1>
</div>

<!-- WHO I AM -->
<div class="main-1">

    <div class="about-left">
        <video controls>
            <source src="/MyPortfolioWebsite/static/video.mp4">
        </video>
    </div>
     
    <div class="about-right">
        <h2>Who I Am</h2>
        <p>
            I am a Computer Science student focused on Java Full Stack Development,
            building scalable and efficient web applications.
        </p>

        <h2>What I Do</h2>
        <p>
            I develop backend systems using <b>Java, Spring Boot, and REST APIs</b>,
            and design responsive user interfaces using <b>HTML, CSS, and JavaScript</b>.
        </p>

        <h2>My Goal</h2>
        <p>
            To gain real-world experience by working on impactful projects and
            continuously improving my skills as a full stack developer.
        </p>
    </div>

</div>

<!-- MY JOURNEY -->
<div class="journey-section" id="journey">
    <h2>My <span>Journey</span></h2>

    <div class="journey-container">
        <div class="timeline">
            <h3>Education</h3>

            <div class="timeline-item">
                <h4>2022 - 2026 | BE Computer Science</h4>
                <p>Currently pursuing Computer Science Engineering with focus on Full Stack Development.</p>
            </div>

            <div class="timeline-item">
                <h4>2020 - 2022 | PU (Science)</h4>
                <p>Completed Pre-University education with strong fundamentals in Mathematics and Computer Science.</p>
            </div>

            <div class="timeline-item">
                <h4>2019 - 2020 | SSLC</h4>
                <p>Completed SSLC with good academic performance and interest in programming.</p>
            </div>

        </div>
    </div>
</div>

<!-- MY SKILLS -->
<div class="skills-section" id="skills">
    <h2>My <span>Skills</span></h2>

    <div class="skills-container">

        <div class="skill-box">
            <h3>Coding Skills</h3>

            <div class="skill">
                <label>HTML <span>90%</span></label>
                <div class="progress">
                    <div class="progress-bar" data-width="90%"></div>
                </div>
            </div>

            <div class="skill">
                <label>CSS <span>80%</span></label>
                <div class="progress">
                    <div class="progress-bar" data-width="80%"></div>
                </div>
            </div>

            <div class="skill">
                <label>JavaScript <span>75%</span></label>
                <div class="progress">
                    <div class="progress-bar" data-width="75%"></div>
                </div>
            </div>

            <div class="skill">
                <label>Java <span>85%</span></label>
                <div class="progress">
                    <div class="progress-bar" data-width="85%"></div>
                </div>
            </div>

            <div class="skill">
                <label>Spring Boot <span>78%</span></label>
                <div class="progress">
                    <div class="progress-bar" data-width="78%"></div>
                </div>
            </div>

        </div>

        <div class="skill-box">
            <h3>Professional Skills</h3>

            <div class="skill">
                <label>Web Development <span>88%</span></label>
                <div class="progress">
                    <div class="progress-bar" data-width="88%"></div>
                </div>
            </div>

            <div class="skill">
                <label>Backend APIs <span>82%</span></label>
                <div class="progress">
                    <div class="progress-bar" data-width="82%"></div>
                </div>
            </div>

            <div class="skill">
                <label>Database (MySQL) <span>75%</span></label>
                <div class="progress">
                    <div class="progress-bar" data-width="75%"></div>
                </div>
            </div>

            <div class="skill">
                <label>UI Design <span>80%</span></label>
                <div class="progress">
                    <div class="progress-bar" data-width="80%"></div>
                </div>
            </div>

            <div class="skill">
                <label>Problem Solving <span>78%</span></label>
                <div class="progress">
                    <div class="progress-bar" data-width="78%"></div>
                </div>
            </div>

        </div>

    </div>
</div>

<!-- FOCUS AREAS -->
<div class="main-2">
    <h2 class="section-title">My <span>Focus Areas</span></h2>

    <div class="teammates"> 

        <div class="card">
            <img src="/MyPortfolioWebsite/static/f1.jpg">
            <h3>Backend Development</h3>
            <p>Spring Boot & APIs</p>
        </div>
          
        <div class="card">
            <img src="/MyPortfolioWebsite/static/f2.jpg">
            <h3>Frontend Design</h3>
            <p>Responsive UI</p>
        </div>
          
        <div class="card">
            <img src="/MyPortfolioWebsite/static/f3.webp">
            <h3>Database</h3>
            <p>MySQL Integration</p>
        </div>
          
        <div class="card">
            <img src="/MyPortfolioWebsite/static/f4.jpg">
            <h3>Projects</h3>
            <p>Full Stack Apps</p>
        </div>

    </div>
</div>

<%@ include file="footer.jsp" %>

<script>
let skillAnimated = false;
let journeyAnimated = false;

window.addEventListener("scroll", function(){

    const screenHeight = window.innerHeight;

    /* SKILLS ANIMATION */
    const skillsSection = document.getElementById("skills");
    const progressBars = document.querySelectorAll(".progress-bar");

    const skillsPosition = skillsSection.getBoundingClientRect().top;

    if(skillsPosition < screenHeight - 150 && !skillAnimated){
        progressBars.forEach(bar => {
            bar.style.width = bar.getAttribute("data-width");
        });
        skillAnimated = true;
    }

    /* JOURNEY ANIMATION */
    const journeySection = document.getElementById("journey");
    const journeyItems = document.querySelectorAll(".timeline-item");

    const journeyPosition = journeySection.getBoundingClientRect().top;

    if(journeyPosition < screenHeight - 150 && !journeyAnimated){

        journeyItems.forEach((item, index) => {
            setTimeout(() => {
                item.classList.add("show");
            }, index * 300);
        });

        journeyAnimated = true;
    }

});
</script>

</body>
</html>