<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<!-- Basic Page Needs
	================================================== -->
	<meta charset="utf-8">
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	$MetaTags(false)
	<!-- Mobile Specific Metas
	================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS
	================================================== -->
	<!-- Bootstrap  -->
	<link type="text/css" rel="stylesheet" href="$Themedir/bootstrap/css/bootstrap.min.css">
	<!-- web font  -->
	<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css'>
	<!-- plugin css  -->
	<link rel="stylesheet" type="text/css" href="$Themedir/js-plugin/animation-framework/animate.css" />
	<!-- Pop up-->
	<link rel="stylesheet" type="text/css" href="$Themedir/js-plugin/magnific-popup/magnific-popup.css" />
	<!-- Flex slider-->
	<link rel="stylesheet" type="text/css" href="$Themedir/js-plugin/flexslider/flexslider.css" />
	<!-- Owl carousel-->
	<link rel="stylesheet" href="$Themedir/js-plugin/owl.carousel/owl-carousel/owl.carousel.css">
	<link rel="stylesheet" href="$Themedir/js-plugin/owl.carousel/owl-carousel/owl.theme.css">
	<!-- isotope -->
	<link type="text/css" rel="stylesheet" href="$Themedir/js-plugin/isotope/css/style.css">
	<!-- icon fonts -->
	<link type="text/css" rel="stylesheet" href="$Themedir/font-icons/custom-icons/css/custom-icons.css">
	<link type="text/css" rel="stylesheet" href="$Themedir/font-icons/custom-icons/css/custom-icons-ie7.css">
	<!-- Custom css -->
	<link type="text/css" rel="stylesheet" href="$Themedir/css/layout.css">
	<link type="text/css" id="colors" rel="stylesheet" href="$Themedir/css/blue.css">
	<link type="text/css" rel="stylesheet" href="$Themedir/css/custom.css">
	<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> <![endif]-->
	<script src="$Themedir/js/modernizr-2.6.1.min.js"></script>
<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="$Themedir/images/favicon.ico">
	<link rel="apple-touch-icon" href="$Themedir/images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="$Themedir/images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="$Themedir/images/apple-touch-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="144x144" href="$Themedir/images/apple-touch-icon-144x144.png">
</head>
<body class="header3" id="">
<!-- Primary Page Layout 
	================================================== -->
	<!-- globalWrapper -->
	<div id="globalWrapper">
		<% include Header %>

		$Layout

			<% include Footer %>
		</div>
		<!-- global wrapper -->
<!-- End Document 
	================================================== -->
	<script type="text/javascript" src="$Themedir/js-plugin/respond/respond.min.js"></script>
	<script type="text/javascript" src="$Themedir/js-plugin/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript" src="$Themedir/js-plugin/jquery-ui/jquery-ui-1.8.23.custom.min.js"></script>
	<!-- third party plugins  -->
	<script type="text/javascript" src="$Themedir/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="$Themedir/js-plugin/easing/jquery.easing.1.3.js"></script>
	<!-- carousel -->
	<script type="text/javascript" src="$Themedir/js-plugin/owl.carousel/owl-carousel/owl.carousel.min.js"></script>
	<!-- pop up -->
	<script type="text/javascript" src="$Themedir/js-plugin/magnific-popup/jquery.magnific-popup.min.js"></script>
	<!-- flex slider -->
	<script type="text/javascript" src="$Themedir/js-plugin/flexslider/jquery.flexslider-min.js"></script>
	<!-- isotope -->
	<script type="text/javascript" src="$Themedir/js-plugin/isotope/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="$Themedir/js-plugin/isotope/jquery.isotope.sloppy-masonry.min.js"></script>
	<!-- form -->
	<script type="text/javascript" src="$Themedir/js-plugin/neko-contact-ajax-plugin/js/jquery.form.js"></script>
	<script type="text/javascript" src="$Themedir/js-plugin/neko-contact-ajax-plugin/js/jquery.validate.min.js"></script>
	
	<!-- Paralax -->
	<script type="text/javascript" src="$Themedir/js-plugin/parallax/js/jquery.stellar.min.js"></script>
	<script type="text/javascript" src="$Themedir/js-plugin/parallax/js/jquery.localscroll-1.2.7-min.js"></script>
	<!-- Custom  -->
	<script type="text/javascript" src="$Themedir/js/custom.js"></script>
</body>
</html>

