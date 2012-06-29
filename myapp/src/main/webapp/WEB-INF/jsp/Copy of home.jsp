<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
		<% String bootstrap_assets_path = request.getContextPath() + "/resources/bootstrap/twitter-bootstrap/docs/assets"; %>
    <!-- Le styles -->
    <link href="<%=bootstrap_assets_path%>/css/bootstrap.css" rel="stylesheet">
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>
    <link href="<%=bootstrap_assets_path%>/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="<%=bootstrap_assets_path%>/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=bootstrap_assets_path%>/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=bootstrap_assets_path%>/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=bootstrap_assets_path%>/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<%=bootstrap_assets_path%>/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <body>
	<jsp:include page="menu.jsp" />
    <div class="container">

      <h1>Bootstrap starter template</h1>
      <p>Use this document as a way to quick start any new project.<br> All you get is this message and a barebones HTML document.</p>

    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%=bootstrap_assets_path%>/js/jquery.js"></script>
    <script src="<%=bootstrap_assets_path%>/js/bootstrap-transition.js"></script>
    <script src="<%=bootstrap_assets_path%>/js/bootstrap-alert.js"></script>
    <script src="<%=bootstrap_assets_path%>/js/bootstrap-modal.js"></script>
    <script src="<%=bootstrap_assets_path%>/js/bootstrap-dropdown.js"></script>
    <script src="<%=bootstrap_assets_path%>/js/bootstrap-scrollspy.js"></script>
    <script src="<%=bootstrap_assets_path%>/js/bootstrap-tab.js"></script>
    <script src="<%=bootstrap_assets_path%>/js/bootstrap-tooltip.js"></script>
    <script src="<%=bootstrap_assets_path%>/js/bootstrap-popover.js"></script>
    <script src="<%=bootstrap_assets_path%>/js/bootstrap-button.js"></script>
    <script src="<%=bootstrap_assets_path%>/js/bootstrap-collapse.js"></script>
    <script src="<%=bootstrap_assets_path%>/js/bootstrap-carousel.js"></script>
    <script src="<%=bootstrap_assets_path%>/js/bootstrap-typeahead.js"></script>

  </body>
</html>
