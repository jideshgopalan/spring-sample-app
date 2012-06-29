<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>

<c:url value="" var="homeUrl"/>
<c:url value="user" var="userUrl"/>
<c:url value="admin" var="adminUrl"/>
<c:url value="logout" var="logoutUrl"/>



 <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">Project name</a>
          <div class="nav-collapse">
            <ul class="nav">
             	<li class="active"><a href="${homeUrl}">Home</a></li>
				<li><a href="${userUrl}">User</a></li>
             	<sec:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="${adminUrl}">Admin</a></li>
				</sec:authorize>
            <li><a href="${logoutUrl}">Logout</a></li>
            </ul>
             <div style="float: right; vertical-align: middle; margin: 4px; padding: 4px;">  <span id="menu-username"><%=SecurityContextHolder.getContext().getAuthentication().getName()%></span> </div>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>