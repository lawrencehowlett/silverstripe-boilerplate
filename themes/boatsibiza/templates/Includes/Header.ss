<header class="navbar-fixed-top">
	<!-- pre header -->
	<div id="preHeader" class="hidden-xs">
		<div class="container">
			<div class="row">
				<div class="col-xs-4">
					<ul class="quickMenu">
						<li><a href="/sitemap.xml" class="linkLeft">Site map</a></li>
						<li><a href="/about-boatsibiza">About us</a></li>
						<li><a href="/about-boatsibiza/our-team ">Our team</a></li>
						<li><a href="/contact">Contact</a></li>
					</ul>
				</div>
				<div class="col-xs-8">
					<div id="contactBloc">
						<!-- social icons -->
						<ul class="socialNetwork">
							<li>
								<a href="https://www.facebook.com/boats.ibiza" class="tips" title="follow us on Facebook" target="_blank">
									<i class="icon-facebook-1 iconRounded"></i>
								</a>
							</li>
							<li>
								<a href="https://twitter.com/boatsibiza" class="tips" title="follow us on Twitter" target="_blank">
									<i class="icon-twitter-bird iconRounded"></i>
								</a>
							</li>
							<!-- social icons -->
						</ul>
						<!-- phone -->
						<span class="contactPhone"><i class="icon-mobile"></i>+34 663 745 520</span>
						<span class="contactPhone"><i class="icon-mobile"></i>+34 971 804 267</span>
						<span class="contactPhone"><i class="icon-mobile"></i>+44 7557 406 750</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- pre header -->
	<!-- header -->
	<div id="mainHeader" role="banner">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<!-- responsive navigation -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Logo -->
					<a class="navbar-brand" href="$Themedir/index.html"><img src="$Themedir/images/main-logo.png" alt="FAT CATZ website template"/></a>
				</div>
				<div class="collapse navbar-collapse" id="mainMenu">


					<!-- Main navigation -->
					<ul class="nav navbar-nav pull-right">
						<% loop $Menu(1) %>
		                      <% if Children %>
			                      <li <% if not Last %>class="primary"<% else %>id="lastMenu" class="last"<% end_if %>><a href="$Link" class="firstLevel hasSubMenu <% if Last %>last<% end_if %>">$MenuTitle.XML</a>
			                        <ul class="subMenu">
			                            <li><a href="$Link">$MenuTitle.XML</a></li>
			                            <% loop Children %>
			                              <li><a href="$Link">$Title</a></li>
			                            <% end_loop %>
			                        </ul>
			                      </li>
		                      <% else %>
		                      	<li <% if not Last %>class="primary"<% else %>id="lastMenu" class="last"<% end_if %>><a href="$Link" class="firstLevel <% if Last %>last<% end_if %>"  title="Go to the $Title.XML page">$MenuTitle.XML</a></li>
		                      <% end_if %>
		                      <li class="sep"></li>
		                <% end_loop %>
					</ul>
					<!-- End main navigation -->

					
				</div>
			</nav>
		</div>
	</div>
</header>
<!-- header -->