<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>

.parent-nav{
 display:flex;
 justify-content:space-between;
 align-items:center;
 padding:15px 40px;

 position:fixed;
 top:0;
 width:100%;

 z-index:99999;  /* ✅ VERY HIGH z-index */

 /* GLASS EFFECT */
 background: rgba(241, 233, 233, 0.55);
 backdrop-filter: blur(16px);
 -webkit-backdrop-filter: blur(16px);

 border-bottom: 1px solid var(--border);
 box-shadow: 0 10px 28px rgba(21, 23, 61, 0.12);
}

/* DARK MODE NAV */
.dark .parent-nav{
 background: rgba(21, 23, 61, 0.7);
 border-bottom: 1px solid rgba(241, 233, 233, 0.15);
 box-shadow: 0 10px 28px rgba(0,0,0,0.5);
}

/* LOGO */
.logo-text{
 font-weight:bold;
 font-size:20px;
 letter-spacing:1px;
 color:var(--text);
}

/* NAV LINKS */
.center-nav{
 display:flex;
 gap:26px;
}

.center-nav a{
 text-decoration:none;
 color:var(--text);
 font-weight:600;
 font-size:14px;
 letter-spacing:1px;
 position:relative;
 opacity:0.9;
 transition:0.3s;
}

/* hover underline */
.center-nav a::after{
 content:"";
 position:absolute;
 left:0;
 bottom:-6px;
 width:0%;
 height:2px;
 background:var(--primary);
 transition:0.3s;
 border-radius:20px;
}

.center-nav a:hover::after{
 width:100%;
}

.center-nav a:hover{
 color:var(--primary);
 opacity:1;
}

/* NAV RIGHT */
.nav-right{
 display:flex;
 gap:10px;
 align-items:center;
}

.nav-right button{
 padding:9px 14px;
 border-radius:12px;
 border:none;
 cursor:pointer;
 font-size:14px;

 background:var(--primary);
 color:white;
 transition:0.3s;
 box-shadow:0 8px 18px rgba(152, 37, 152, 0.25);
}

.nav-right button:hover{
 background:var(--secondary);
 transform:translateY(-2px);
}

/* Toggle Button */
.toggle-btn{
 background: rgba(152, 37, 152, 0.12);
 color:var(--text);
 border:1px solid var(--border);
 box-shadow:none;
}

.toggle-btn:hover{
 background: var(--primary);
 color:white;
}

/* CONTACT BUTTON LINK */
.contact-btn a{
 color:white;
 text-decoration:none;
 font-weight:600;
}

/* HAMBURGER */
.hamburger{
 display:none;
 font-size:24px;
 cursor:pointer;
 background:none;
 border:none;
 color:var(--text);
 box-shadow:none;
 padding:6px 10px;
}

/* MOBILE MENU */
.mobile-menu{
 display:none;
 flex-direction:column;
 gap:16px;

 position:absolute;
 top:72px;
 right:20px;

 width:220px;
 padding:20px;

 border-radius:16px;
 background:var(--card);
 border:1px solid var(--border);
 box-shadow:0 12px 28px rgba(0,0,0,0.2);

 z-index:999999;   /* ✅ FIX: makes it visible above all */
}

.mobile-menu a{
 text-decoration:none;
 color:var(--text);
 font-weight:600;
 font-size:14px;
 letter-spacing:1px;
 transition:0.3s;
}

.mobile-menu a:hover{
 color:var(--primary);
 padding-left:4px;
}

.mobile-menu.active{
 display:flex;
}

/* RESPONSIVE */
@media(max-width:768px){

  .parent-nav{
    padding:15px 20px;
  }

  .center-nav{
    display:none;
  }

  .hamburger{
    display:block;
  }

  .contact-btn{
    display:none;
  }
}

</style>

<header>

<div class="parent-nav">

  <div class="logo">
    <div class="logo-text">PORTFOLIO</div>
  </div>

  <div class="center-nav">
    <a href="/MyPortfolioWebsite/">HOME</a>
    <a href="about">ABOUT</a>
    <a href="services">PROJECTS</a>
    <a href="blogs">BLOGS</a>
  </div>

  <div class="nav-right">
    <button class="toggle-btn" onclick="toggleTheme()">🌙</button>

    <button class="contact-btn">
      <a href="contactus">CONTACT</a>
    </button>

    <button class="hamburger" onclick="toggleMenu()">☰</button>
  </div>

</div>

<!-- MOBILE MENU -->
<div class="mobile-menu" id="mobileMenu">
  <a href="/MyPortfolioWebsite/">HOME</a>
  <a href="about">ABOUT</a>
  <a href="services">PROJECTS</a>
  <a href="blogs">BLOGS</a>
  <a href="contactus">CONTACT</a>
</div>

</header>

<script>
function toggleTheme(){
  document.body.classList.toggle("dark");

  if(document.body.classList.contains("dark")){
    localStorage.setItem("theme","dark");
  } else {
    localStorage.setItem("theme","light");
  }
}

window.onload = function(){
  if(localStorage.getItem("theme") === "dark"){
    document.body.classList.add("dark");
  }
}

function toggleMenu(){
  document.getElementById("mobileMenu").classList.toggle("active");
}
</script>