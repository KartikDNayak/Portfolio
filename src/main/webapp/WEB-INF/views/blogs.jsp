<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Blogs</title>

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
  --shadow: rgba(0,0,0,0.65);
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
  height:320px;
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
  text-transform:uppercase;
}

.hero-content p{
  margin-top:15px;
  font-size:16px;
  line-height:1.7;
  color:rgba(241,233,233,0.95);
  max-width:900px;
  margin-left:auto;
  margin-right:auto;
}

/* BLOGS SECTION */
.blogs-section{
  width:85%;
  margin:70px auto;
}

.blogs-title{
  text-align:center;
}

.blogs-title h2{
  font-size:42px;
  font-weight:900;
  letter-spacing:1px;
}

.blogs-title h2 span{
  color:var(--primary);
}

.blogs-title p{
  margin-top:12px;
  font-size:15px;
  opacity:0.85;
  line-height:1.7;
  max-width:850px;
  margin-left:auto;
  margin-right:auto;
}

/* BLOG GRID */
.blogs-grid{
  margin-top:55px;
  display:grid;
  grid-template-columns:repeat(3, 1fr);
  gap:28px;
}

/* BLOG CARD */
.blog-card{
  background:var(--card);
  border:1px solid var(--border);
  border-radius:18px;
  overflow:hidden;
  box-shadow:0 12px 28px var(--shadow);
  transition:0.35s;
}

.blog-card:hover{
  transform:translateY(-8px);
  box-shadow:0 0 22px rgba(152, 37, 152, 0.35);
}

/* IMAGE */
.blog-card img{
  width:100%;
  height:190px;
  object-fit:cover;
}

/* BLOG CONTENT */
.blog-content{
  padding:18px;
}

.blog-tag{
  display:inline-block;
  padding:6px 14px;
  border-radius:20px;
  font-size:12px;
  font-weight:800;
  color:white;
  background:var(--primary);
  margin-bottom:12px;
  letter-spacing:0.5px;
}

.blog-content h3{
  font-size:17px;
  font-weight:900;
  margin-bottom:10px;
  line-height:1.4;
}

.blog-content p{
  font-size:14px;
  line-height:1.6;
  opacity:0.85;
  margin-bottom:15px;
}

/* FOOTER */
.blog-footer{
  display:flex;
  justify-content:space-between;
  align-items:center;
  font-size:13px;
  opacity:0.8;
}

.blog-footer span{
  font-weight:600;
}

.blog-footer a{
  text-decoration:none;
  color:var(--primary);
  font-weight:900;
  transition:0.3s;
}

.blog-footer a:hover{
  color:var(--secondary);
  padding-left:5px;
}

/* RESPONSIVE */
@media(max-width:1100px){
  .blogs-grid{
    grid-template-columns:repeat(2, 1fr);
  }
}

@media(max-width:768px){

  .hero-content h1{
    font-size:40px;
  }

  .hero-content p{
    font-size:14px;
  }

  .blogs-section{
    width:92%;
  }

  .blogs-title h2{
    font-size:32px;
  }

  .blogs-grid{
    grid-template-columns:1fr;
  }
}

@media(max-width:600px){

  .hero{
    height:350px;
  }

  .hero-content h1{
    font-size:34px;
  }

  .hero-content p{
    font-size:13px;
  }

  .blog-card img{
    height:170px;
  }
}

</style>

</head>

<body>

<%@ include file="nav.jsp" %>

<div class="hero">
    <img src="${pageContext.request.contextPath}/static/web.jpg">
    <div class="hero-content">
        <h1>MY BLOGS</h1>
        <p>
            I write technical articles about Java Full Stack Development, Spring Boot, UI design,
            and real-world coding concepts.
        </p>
    </div>
</div>

<div class="blogs-section">

    <div class="blogs-title">
        <h2>Technical <span>Articles</span></h2>
        <p>Practical coding blogs based on my learning journey.</p>
    </div>

    <div class="blogs-grid">

        <c:forEach var="b" items="${blogs}">

            <div class="blog-card">

                <!-- ✅ FIXED IMAGE PATH -->
                <img src="${pageContext.request.contextPath}/static/${b.image}">

                <div class="blog-content">

                    <div class="blog-tag">${b.category}</div>

                    <h3>${b.title}</h3>

                    <p>${b.description}</p>

                    <div class="blog-footer">
                        <span>${b.created_date}</span>

                        <!-- ✅ FIXED LINK -->
                        <a href="${pageContext.request.contextPath}/blog-details?id=${b.id}">
                            Read More →
                        </a>
                    </div>

                </div>
            </div>

        </c:forEach>

    </div>

</div>

<%@ include file="footer.jsp" %>

</body>
</html>