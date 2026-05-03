<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>

.footer-container{
 background: var(--card);
 color: var(--text);
 display:flex;
 justify-content:space-between;
 flex-wrap:wrap;
 gap:45px;
 padding:55px 35px;
 border-top:1px solid var(--border);
}

.fcol{
 display:flex;
 flex-direction:column;
 gap:10px;
 flex:1;
 min-width:210px;
 max-width:260px;
}

.fcol h3{
 font-size:18px;
 margin-bottom:6px;
 color:var(--primary);
 letter-spacing:1px;
}

.fcol p{
 font-size:14px;
 line-height:1.7;
 opacity:0.9;
}

.fcol a{
 color:var(--text);
 text-decoration:none;
 font-size:14px;
 transition:0.3s;
 opacity:0.85;
}

.fcol a:hover{
 color:var(--primary);
 opacity:1;
 transform:translateX(3px);
}

/* FOOTER BUTTON */
.footer-btn{
 margin-top:12px;
 padding:11px 18px;
 border-radius:12px;
 border:none;
 background:var(--primary);
 color:white;
 cursor:pointer;
 font-size:14px;
 transition:0.3s;
 box-shadow:0 8px 18px rgba(152, 37, 152, 0.25);
}

.footer-btn:hover{
 background:var(--secondary);
 transform:translateY(-2px);
}

/* BUTTON LINK STYLE */
.footer-btn a{
 color:white;
 text-decoration:none;
 display:block;
 width:100%;
 height:100%;
}

/* BOTTOM BAR */
.bottom-bar{
 text-align:center;
 padding:15px;
 background:var(--primary);
 color:white;
 font-size:14px;
 letter-spacing:1px;
}

/* TABLET */
@media(max-width:992px){
  .footer-container{
    justify-content:center;
    text-align:center;
  }

  .fcol{
    align-items:center;
  }
}

/* MOBILE */
@media(max-width:600px){
  .footer-container{
    flex-direction:column;
    align-items:center;
    padding:45px 20px;
  }

  .fcol{
    max-width:100%;
    width:100%;
    align-items:center;
  }

  .footer-btn{
    width:100%;
  }
}

</style>

<footer>

<div class="footer-container">

    <div class="fcol">
        <h3>Portfolio</h3>
        <p>Showcasing Java Full Stack projects with modern UI design and scalable backend development.</p>

        <!-- GitHub Button -->
        <button class="footer-btn">
            <a href="https://github.com/KartikDNayak" target="_blank">GitHub</a>
        </button>
    </div>

    <div class="fcol">
        <h3>Technologies</h3>
        <a href="#">Java</a>
        <a href="#">Spring Boot</a>
        <a href="#">REST APIs</a>
        <a href="#">HTML / CSS</a>
        <a href="#">JavaScript</a>
    </div>

    <div class="fcol">
        <h3>Navigation</h3>
        <a href="/MyPortfolioWebsite/">Home</a>
        <a href="about">About</a>
        <a href="services">Projects</a>
        <a href="blogs">Blogs</a>
    </div>

    <div class="fcol">
        <h3>Contact</h3>

        <p>
          Email:
          <a href="mailto:knayak5515@gmail.com">knayak5515@gmail.com</a>
        </p>

        <p>Karnataka, India</p>

        <!-- LinkedIn Button -->
        <button class="footer-btn">
            <a href="https://www.linkedin.com/in/kartik-nayak-3a0302259" target="_blank">LinkedIn</a>
        </button>
    </div>

</div>

<div class="bottom-bar">
    © 2026 Kartik Nayak • Java Full Stack Developer
</div>

</footer>