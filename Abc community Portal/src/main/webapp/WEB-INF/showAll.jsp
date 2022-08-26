<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title> view Users </title>
<style>
.gradient-custom {
/* fallback for old browsers */
background: #f6d365;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1))
}

    </style>
</head>
 <body>

  
      <dd:forEach var="lear" items="${testv }">

        <section class="vh-40"  style="background-color: #f4f5f7;">
          <div class="container py-5 h-40">
            <div class="row d-flex justify-content-center align-items-center h-100">
              <div class="col col-lg-6 mb-4 mb-lg-0">
                <div class="card mb-3" style="border-radius: .5rem;">
                  <div class="row g-0">
                    <div class="col-md-4 gradient-custom text-center text-white"
                      style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
                      <img src="https://freesvg.org/img/abstract-user-flat-4.png"
                        alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
                      <h5>@${lear.userName }</h5>
                      <p> ${lear.first_name }   ${lear.last_name }</p>
                      <i class="far fa-edit mb-5"  href="update/${lear.userid}"></i>
                    </div>
                    <div class="col-md-8">
                      <div class="card-body p-4">
                        <h6>Information</h6>
                        <hr class="mt-0 mb-4">
                        <div class="row pt-1">
                          <div class="col-6 mb-3">
                            <h6>Email</h6>
                            <p class="text-muted">${lear.email}</p>
                          </div>
                          <div class="col-6 mb-3">
                            <h6>Phone</h6>
                            <p class="text-muted">${lear.phone}</p>
                          </div>
                        
                        <div class="row pt-1">
                          <div class="col-6 mb-3">
                            <h6>User Id</h6>
                            <p class="text-muted">${lear.userid}</p>
                          </div>
                          <div class="col-6 mb-3">
                            <h6>country</h6>
                            <p class="text-muted">${lear.country}</p>
                          </div>
                        </div>
                        </div>
                        <h6></h6>
                        <hr class="mt-0 mb-4">
                        <div class="row">
                          <div class="col-sm-12">
                          <a class="btn btn-info " target="__blank" href="update/${lear.userid}">Update</a>
                          </div>
                          &nbsp;
                          <div class="col-sm-12">
                            
                            <a class="btn btn-info " target="__blank" href="delete/${lear.userid}">Delete &nbsp;</a>
                          </div>
                        <div class="d-flex justify-content-start">
                          <a href="#!"><i class="fab fa-facebook-f fa-lg me-3"></i></a>
                          <a href="#!"><i class="fab fa-twitter fa-lg me-3"></i></a>
                          <a href="#!"><i class="fab fa-instagram fa-lg"></i></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>


      </dd:forEach>
    
    
  </body>
  
</html>