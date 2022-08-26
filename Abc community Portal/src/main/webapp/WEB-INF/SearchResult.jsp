<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%> 
     <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %> 
     <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>homepage</title>
	<link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
	<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet"> <!-- https://fonts.google.com/ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-xtra-blog.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<style>
    /*

TemplateMo 553 Xtra Blog

https://templatemo.com/tm-553-xtra-blog

*/

html { overflow-x: hidden; }

body {
    margin: 0;
    padding: 0;
    font-family: 'Source Sans Pro', sans-serif;
    font-size: 19px;
    line-height: 2em;
    overflow-x: hidden;
}

p, span { color: #999; }
hr { 
    border-top-color: #CCC; 
    margin-top: 10px;
    margin-bottom: 10px;
}
.form-control::-webkit-input-placeholder { color: #999; }  
.form-control:-ms-input-placeholder { color: #999; }  
.form-control::placeholder { color: #999; }

.tm-header {
    background-color: #0CC;
    color: white;
    
    position: fixed;
    top: 0;
    left: 0;
    bottom: 0;
    z-index: 100;
    width: 400px;
    overflow-y: visible;     
}

.tm-header-wrapper {
    overflow-y: scroll;
    scrollbar-width: none;
    -ms-overflow-style: none;
    padding: 30px;
    width: 100%;
    height: 100%; 
}

.tm-header-wrapper::-webkit-scrollbar {
    width: 0;
    height: 0;
}

.tm-site-header {
    margin-top: 50px;
    margin-bottom: 115px;
}

.tm-site-logo {
    width: 75px;
    height: 75px;
    border-radius: 50%;
    background-color: white;    
    display: flex;
    align-items: center;
    justify-content: center;
}

.tm-site-logo i { color: #0CC; }

.tm-main {
    margin-left: 400px;
    padding: 80px 100px 25px;
}

.tm-post { max-width: 830px; }

.tm-row {
    max-width: 980px;
    justify-content: space-between;
}

.tm-nav { margin-bottom: 100px; }

.tm-nav-item {
    list-style: none;
    margin-bottom: 30px;
}

.tm-nav-link {
    color: white;
    background-color: transparent;
    height: 38px;
    width: 100%;
    max-width: 236px;
    display: flex;
    align-items: center;
    font-size: 1.4rem;
    padding: 24px;
}

.tm-nav-item:hover .tm-nav-link,
.tm-nav-item.active .tm-nav-link
 {
    color: #0CC;
    background-color: white;
    text-decoration: none;
}

.tm-nav ul { position: relative; }

.tm-nav-item:hover:after,
.tm-nav-item.active:after {
    content: '';
    width: 100%;
    max-width: 300px;    
    height: 75px;
    display: block;
    border: 1px solid white;
    margin-left: 10px;
    margin-top: -65px;
    position: absolute;
    z-index: -1000;
}

.tm-nav-link i { margin-right: 37px; }

ul { 
    margin: 0; 
    padding: 0;
}

.tm-nav { margin-left: -30px; }

.tm-social-link {
    display: inline-block;
    background-color: white;    
    font-size: 1.4rem;
    width: 50px;
    height: 50px;
    text-align: center;
    padding-top: 8px; 
    margin-right: 15px;   
    margin-bottom: 15px;
}

.tm-social-icon { 
    color: #0CC;    
    transition: all 0.3s ease;
}

.tm-social-link:hover .tm-social-icon.fa-facebook { color: #3b5998; }
.tm-social-link:hover .tm-social-icon.fa-twitter { color: #00acee; }
.tm-social-link:hover .tm-social-icon.fa-instagram { color: #3f729b; }
.tm-social-link:hover .tm-social-icon.fa-linkedin { color: #0e76a8; }
.navbar-toggler { display: none; }

.tm-search-form {
    display: flex;
    align-items: center;
    justify-content: flex-end;
}

.form-inline .form-control.tm-search-input {
    display: block;
    height: 40px;
    width: 380px;
    margin-right: 5px;
    border-radius: 0;
    border-color: #0CC;
    font-size: 1.2rem;
}

.tm-search-button {
    width: 80px;
    height: 41px;
    border: none;
    background-color: #0CC;
    transition: all 0.3s ease;
}
.tm-search-button:hover { background-color: #09b6b6; }

.tm-search-icon {
    color: white;
    font-size: 1.3rem;
}

.tm-post-link {
    display: block;
    position: relative;
	cursor: pointer;
}

.tm-post-link-inner {
    overflow: hidden;
    background: #3085a3;
}

.tm-post-link img {
    position: relative;
	display: block;
	min-height: 100%;
	max-width: 100%;
	opacity: 0.8;
}

.effect-lily img {
	max-width: none;
	width: -webkit-calc(100% + 50px);
	width: calc(100% + 50px);
	opacity: 0.7;
	-webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
	transition: opacity 0.35s, transform 0.35s;
	-webkit-transform: translate3d(-40px,0, 0);
	transform: translate3d(-40px,0,0);
}

.effect-lily:hover img { opacity: 1; }

.effect-lily:hover img {
    -webkit-transform: translate3d(0,0,0);
	transform: translate3d(0,0,0);
}

.tm-post { margin-bottom: 75px; }

.tm-new-badge {
    top: 25px;
    right: -10px;
    background-color: #0CC;
    color: white;
    padding: 5px 20px;
}

.tm-post-title {
    font-size: 1.7rem;
    transition: all 0.3s ease;
}

.tm-h3 {
    font-size: 1.3rem;
    color: #999;
}

.tm-post-link:hover .tm-post-title { color: #0CC; }

.tm-btn {
    display: inline-block;
    border-radius: 5px;
    font-size: 1.3rem;
    transition: all 0.3s ease;
}

.tm-btn-primary {    
    background-color: #0CC;
    color: white;  
    padding: 8px 43px;
    border: none;
}

.tm-btn-small { padding: 8px 33px; }

.tm-btn-primary:hover {
    background-color: #09b6b6;
    color: white;
}

.tm-paging-nav ul li {
    list-style: none;
    display: inline-block;
    margin-right: 10px;
}

.tm-paging-nav ul li:last-child { margin-right: 0; }

.tm-paging-link {
    background-color: #F0F0F0;
    color: #999;
    width: 50px;
    height: 50px;
    display: flex;
    align-items: center;
    justify-content: center;    
}

.tm-paging-item .tm-paging-link:hover,
.tm-paging-item.active .tm-paging-link {
    background-color: #0CC;
    color: white;
}

.tm-btn.disabled {
    background-color: #F0F0F0;
    color: #999;
    cursor: not-allowed;
}

.tm-external-link { color: #0CC; }
.tm-external-link:hover { color: #09b6b6; }

.tm-paging-wrapper {
    display: flex;
    justify-content: flex-end;
    align-items: center;
}

.tm-prev-next-wrapper,
.tm-paging-wrapper {
    flex: 0 0 50%;
    max-width: 50%;
    padding-left: 15px;
    padding-right: 15px;
}

.tm-copyright { text-align: right; }

/* Single Post page */
hr.tm-hr-primary { border-top: 5px solid #0CC; }

video {
    width: 100%;
    height: auto;
}

.tm-comment {
    display: flex;
    align-items: flex-start;
}

.tm-comment-figure {
    margin-top: 10px;
    margin-right: 30px;
}

.tm-comment-reply { padding-left: 37px; }

.form-control {
    width: 270px;
    height: 35px;
    border-color: #0CC;
    border-radius: 0;
}

.tm-comment-form { max-width: 360px; }
.tm-category-list { list-style-type: none; }
figure { margin: 0; }
figcaption { line-height: 1.4; }

.tm-post-full { max-width: 600px; }

.tm-post-sidebar {
    max-width: 280px;
    margin-left: auto;
    margin-right: 0;
}

.tm-pt-20 { padding-top: 20px; }
.tm-pt-30 { padding-top: 30px; }
.tm-pt-45 { padding-top: 45px; }
.tm-pt-60 { padding-top: 60px; }
.tm-mb-40 { margin-bottom: 40px; }
.tm-mb-45 { margin-bottom: 45px; }
.tm-mb-55 { margin-bottom: 55px; }
.tm-mb-60 { margin-bottom: 60px; }
.tm-mb-65 { margin-bottom: 65px; }
.tm-mb-75 { margin-bottom: 75px; }
.tm-mb-80 { margin-bottom: 80px; }
.tm-mb-120 { margin-bottom: 120px; }
.tm-mt-40 { margin-top: 40px; }
.tm-mt-100 { margin-top: 100px; }
.tm-mr-20 { margin-right: 20px; }
.tm-color-primary, span.tm-color-primary { color: #099; }
a.tm-color-gray, .tm-color-gray { color: #999; }
a.tm-color-gray:hover { color: #099; }
.tm-bg-gray { background-color: #F3F4F5; }
button:focus { outline: none; }
a:hover { 
    text-decoration: none; 
    color: #048c8c;
}

a:hover figcaption { color: #056767; }
.img-thumbnail { max-width: none; }
.tm-about-pad { padding: 40px 35px; }
.tm-person { max-width: 430px; }
.tm-line-height-short { line-height: 1.8; }

.gmap_canvas {
    overflow:hidden;
    background:none!important;
    height:477px;
    width:100%;
}

.tm-social-links li { 
    list-style: none; 
    display: inline-block;
}

.tm-social-links li a {
    display: block;
    color: white;
    background-color: #0CC;
    width: 45px;
    height: 45px;    
    margin-right: 15px;    
}

.tm-social-links li a i { transition: all 0.3s ease; }
.tm-social-links li a:hover i.fa-facebook { color: #3b5998; }
.tm-social-links li a:hover i.fa-twitter { color: #00acee; }
.tm-social-links li a:hover i.fa-youtube { color: #c4302b; }
.tm-social-links li a:hover i.fa-instagram { color: #3f729b; }

.tm-contact-right { padding-left: 55px; }
.tm-contact-form { max-width: 488px; }

.tm-contact-form input,
.tm-contact-form textarea {
    max-width: 360px;
}

.tm-contact-form label { font-size: 1.4rem; }
.tm-contact-form .form-group { display: flex; }

@media (max-width: 1540px) {
    .tm-header { width: 320px; }

    .tm-main {
        margin-left: 320px;
        width: calc(100% - 320px);
    }
}

@media (max-width: 1300px) {
    .tm-about-col {
        flex: 0 0 100%;
        max-width: 100%;
        margin-bottom: 30px;
    }
}

@media (max-width: 1288px) {
    .tm-social-link { margin-right: 10px; }
}

@media (max-width: 1199px) {
    .tm-post-sidebar { max-width: 440px; }
    .form-inline .form-control.tm-search-input { width: 420px; }
}

@media (max-width: 1086px) {
    .form-inline .form-control.tm-search-input {
        width: 80%;
        margin-right: 15px;
    }
}

/* Hide sidebar */
@media (max-width: 991px) {
    .tm-header {
        width: 320px;
        left: -320px;        
        transition: all 0.3s ease;
    }

    .tm-header.show { left: 0; }
    .tm-header-wrapper { padding: 15px; }

    .navbar-toggler {
        display: block;
        position: fixed;
        left: 0;
        top: 0;
        background-color: rgba(56, 204, 204, 0.75);
        color: white;
        padding: 10px 15px;
        transition: all 0.3s ease;
        border-radius: 0;
        top: 5px;
    }

    .tm-header.show .navbar-toggler { left: 320px; }

    .tm-main {
        margin-left: 0;
        padding: 50px 40px;
        width: 100%;
    }

    .tm-post-sidebar {
        margin-left: 0;
        margin-right: auto;
    }

    .tm-person-col { width: 50%; }
    .tm-person { flex-direction: row; }

    .tm-contact-left {
        flex: 0 0 58.333333%;
        max-width: 58.333333%;
    }

    .tm-contact-right {
        flex: 0 0 41.666667%;
        max-width: 41.666667%;
    }

    .tm-post-full { max-width: none; }
}

@media (max-width: 767px) {
    .form-inline .form-control.tm-search-input {
        width: 70%;
        max-width: 375px;
        margin-right: 15px;
    }

    .tm-search-form { justify-content: flex-start; }
    .tm-main { padding: 60px 10px; }

    .tm-prev-next-wrapper,
    .tm-paging-wrapper {
        flex: 0 0 100%;
        max-width: 100%;
    }

    .tm-paging-wrapper { 
        margin-top: 50px; 
        justify-content: flex-start;
    }

    .tm-copyright { text-align: left; }
}

@media (max-width: 1199px) and (min-width: 992px) {
    .tm-person-col,
    .tm-contact-left,
    .tm-contact-right {
        flex: 0 0 100%;
        max-width: 100%;
    }

    .tm-contact-right { padding-left: 15px; }

    .tm-post-col,
    .tm-aside-col {
        flex: 0 0 100%;
        max-width: 100%;
    }

    .tm-post-sidebar {
        margin-left: 0;
        margin-right: auto;
    }
}

@media (max-width: 709px) {
    .tm-person-col { width: 100%; }
}

@media (max-width: 991px) and (min-width: 826px) {
    .tm-about-col {
        flex: 0 0 33.3333%;
        max-width: 33.3333%;
    }

    .tm-person { flex-direction: row; }
}

@media (max-width: 630px) {
    .tm-contact-left,
    .tm-contact-right {
        flex: 0 0 100%;
        max-width: 100%;
    }

    .tm-contact-right { padding-left: 15px; }
}

@media (max-width: 575px) {
    .tm-contact-form input, 
    .tm-contact-form textarea {
        max-width: 100%;
    }
}

@media (max-width: 480px) {
    .tm-person-col { width: 100%; }
    .tm-person { flex-direction: row; }
}

@media (max-width: 380px) {
    .tm-person img { max-width: 120px; }
}
</style>
</head>
<body>
	<header class="tm-header" id="tm-header">
        <div class="tm-header-wrapper">
            <button class="navbar-toggler" type="button" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="tm-site-header">
                <div class="mb-3 mx-auto tm-site-logo" ></div>            
                <h1 class="text-center">ABC Portal</h1>
            </div>
            <nav class="tm-nav" id="tm-nav">            
                <ul>
                    <li class="tm-nav-item">
                        <i class="fas fa-home"></i><a href="/User" class="tm-nav-link">
                        Home
                    </a></li>
                    <li class="tm-nav-item active"><a href="/search" class="tm-nav-link">
                        <i class="fas fa-pen"></i>
                        Search
                    </a></li>
                    <li class="tm-nav-item"><a href="/profile" class="tm-nav-link">
                        <i class="fas fa-pen"></i>
                        Update Profile 
                    </a></li>
                    <li class="tm-nav-item"><a href="/logout" class="tm-nav-link">
                        <i class="far fa-comments"></i>
                        Logout
                    </a></li>
                </ul>
            </nav>
    </header>
    <div class="example-box">
        <div class="background-shapes"></div>
    <div class="container-fluid">
        <main class="tm-main">
            <!-- Search form -->
            <div class="row tm-row">
                <div class="col-12">
                  
                   
                </div>                
            </div>            
            <div class="row tm-row">
                <h2>Search</h2>
                <article class="col-12 col-md-6 tm-post">
                    <hr class="tm-hr-primary">
                   
<sf:form action="/sear" method="post" modelAttribute="searchd">

    <sf:input class="form-control tm-search-input" placeholder="Search..." path="userName" required="required"/>
    <input class="tm-search-button" style="margin-top:0%"  class="button-9"type="submit" value="Search">
    </sf:form>
    <h1>Leaner Details</h1>
<table>
<tr>
	<th style="padding:10px">UserName</th>
	<th style="padding:10px">Email</th>
	<th style="padding:10px">First&nbsp;Name</th>
	<th style="padding:10px">Last&nbsp;Name</th>
	<th style="padding:10px">Country</th>
	<th style="padding:10px">Phone</th>
</tr> 
  <%-- <dd:forEach var="arves" items="${arves}">  --%>
 
<tr>
	<td style="text-align:center">${arves.userName }</td>
	<td style="padding:10px">${arves.email}</td>
	<td style="padding:10px">${arves.first_name }</td>
	<td style="padding:10px" >${arves.last_name }</td>
	<td style="padding:10px">${arves.country }</td>
	<td style="padding:10px">${arves.phone}</td>
</tr>
<tr>
	<td style="text-align:center">________</td>
	<td style="padding:10px,">_____</td>
	<td style="padding:10px">__________</td>
	<td style="padding:10px" >_________</td>
	<td style="padding:10px">_______</td>
	<td style="padding:10px">_____</td>
</tr>
<%--  </dd:forEach>  --%>
</table>
        </main>

    </div>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/templatemo-script.js"></script>
</body>
<style>

    @import url('https://fonts.googleapis.com/css?family=Montserrat:200,300,400,600');
    
    .example-box {
      background-image: linear-gradient(to bottom right, #ffffff, #0CC);
      width: 100%;
    height: 100VH;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      position: relative;
      overflow: hidden;
      background-size: cover;
      color: white;
      font-family: sans-serif;
      font-weight: 200;
      z-index: 1;
    }
    
    .example-box * {
      z-index: 2;
      color: rgb(43, 103, 103);
    }
    
    h1 {
      font-family: Montserrat, sans-serif;
      color: white;
      font-weight: 600;
      letter-spacing: 2px;
      text-transform: uppercase;
    }
    
    .background-shapes {
      content: "";
      position: absolute;
      z-index: 2;
      left: 0;
      top: 0;
      width: 100%;
      height: 5076px;
      background-size: 100%;
      animation: 120s infiniteScroll linear infinite;
     
      background-image: url(https://cdn2.hubspot.net/hubfs/53/Pricing%202017%20Assets/marketing/Header_Circles-1.svg);
    }
    
    @-webkit-keyframes infiniteScroll {
      0% {
        -webkit-transform: translate3d(0, 0, 0);
        transform: translate3d(0, 0, 0);
      }
    
      100% {
        -webkit-transform: translate3d(0, -1692px, 0);
        transform: translate3d(0, -1692px, 0);
      }
    }
    
    @keyframes infiniteScroll {
      0% {
        -webkit-transform: translate3d(0, 0, 0);
        transform: translate3d(0, 0, 0);
      }
    
      100% {
        -webkit-transform: translate3d(0, -1692px, 0);
        transform: translate3d(0, -1692px, 0);
      }
    }
    
    
    </style>
</html>
