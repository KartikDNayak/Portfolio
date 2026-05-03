<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>${blog.title}</title>


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

/* BLOG CONTAINER */
.blog-container{
  width:75%;
  margin:120px auto 70px;
  background:var(--card);
  border:1px solid var(--border);
  border-radius:20px;
  padding:40px;
  box-shadow:0 12px 28px var(--shadow);
}

/* TITLE */
.blog-container h1{
  font-size:42px;
  color:var(--primary);
  font-weight:900;
  line-height:1.2;
  margin-bottom:18px;
}

/* META */
.blog-meta{
  font-size:14px;
  opacity:0.8;
  margin-bottom:25px;
  font-weight:600;
  letter-spacing:0.4px;
}

.blog-meta span{
  color:var(--secondary);
  font-weight:900;
}

/* IMAGE */
.blog-image{
  width:100%;
  height:420px;
  object-fit:cover;
  border-radius:16px;
  margin-bottom:28px;
  border:1px solid var(--border);
}

/* CONTENT */
.blog-content{
  font-size:16px;
  line-height:1.9;
  opacity:0.95;
  word-wrap: break-word;
  overflow-wrap: break-word;
  white-space: pre-line;
}

.blog-content p{
  margin-bottom:18px;
}

/* BACK BUTTON */
.back-btn{
  display:inline-block;
  margin-top:40px;
  padding:12px 20px;
  background:var(--primary);
  color:white;
  text-decoration:none;
  border-radius:14px;
  font-weight:800;
  font-size:14px;
  transition:0.3s;
  box-shadow:0 8px 18px rgba(152, 37, 152, 0.25);
}

.back-btn:hover{
  background:var(--secondary);
  transform:translateY(-2px);
}

/* RESPONSIVE */
@media(max-width:992px){
  .blog-container{
    width:90%;
    padding:30px;
  }

  .blog-container h1{
    font-size:32px;
  }

  .blog-image{
    height:300px;
  }

  .blog-content{
    font-size:15px;
  }
}

@media(max-width:600px){

  .blog-container{
    width:92%;
    padding:22px;
  }

  .blog-container h1{
    font-size:26px;
  }

  .blog-image{
    height:220px;
  }

  .blog-meta{
    font-size:13px;
  }

  .blog-content{
    font-size:14px;
  }

  .back-btn{
    width:100%;
    text-align:center;
  }
}

</style>

</head>

<body>

<%@ include file="nav.jsp" %>

<div class="blog-container">

    <h1>${blog.title}</h1>

    <div class="blog-meta">
        Category: <span>${blog.category}</span> | ${blog.created_date}
    </div>

    <!-- ✅ FIXED IMAGE -->
    <img class="blog-image" 
         src="${pageContext.request.contextPath}/static/${blog.image}">

    <div class="blog-content">
        ${blog.content}
    </div>

    <!-- ✅ FIXED BACK LINK -->
    <a href="${pageContext.request.contextPath}/blogs" class="back-btn">
        ← Back to Blogs
    </a>

</div>

<%@ include file="footer.jsp" %>

</body>
</html>