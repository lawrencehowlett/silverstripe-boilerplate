<section id="portfolio">
	<header class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-2 col-sm-2 col-md-1">
					<a href="javascript:history.go(-1)" class="btn btn-sm btn-inverse"><i class="icon-left-open-mini"></i>back</a>
				</div>  
				<div class="col-xs-10 col-sm-5 col-md-6 projectTitle">
					<h1>$Title</h1>
					<p>Capacity: $Capacity</p>
				</div>
				<div class="col-sm-5 hidden-xs">
					<ul id="navTrail">
						<li><a href="/">Home</a></li>
						<% loop Parent %><li><a href="$Link">$Title</a></li><% end_loop %>
						<li id="navTrailLast">$Title</li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<section id="content" class="mt30">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="owl-carousel nekoDataOwl" data-neko_items="1" data-neko_singleitem="true">
						<% loop GalleryImages.Sort(SortOrder) %>
						<img <% loop Image %>src="$PaddedImage(750,437).URL"<% end_loop %> alt="$Title" class="img-responsive"/>
						<% end_loop %>
					</div>
				</div>
				<div class="col-xs-12 col-md-4">
					<div class="row">
						<div class="col-md-12">
							$ShortDescriptionTwo
						</div>
						
					</div>
				</div>
			</div>
			<hr>
		</div>

		

		<div class="container">
			<div class="row">
				<div class="col-md-8">
					$Content

					<% if ContentTabs %>

					<div class="panel with-nav-tabs panel-primary">
                		<div class="panel-heading">
							<ul class="nav nav-tabs" class="pageTabs"> 
								<% loop ContentTabs.Sort(SortOrder) %>
									<li <% if First %>class="active"<% end_if %>><a href="#tab{$Pos(0)}" data-toggle="tab">$Title</a></li> 
								<% end_loop %>
							</ul>  
						</div>
						<div class="panel-body">
							<div class="tab-content"> 
								<% loop ContentTabs.Sort(SortOrder) %>
									<div class="tab-pane <% if First %>active<% end_if %>" id="tab{$Pos(0)}">
									$Content
									</div> 
								<% end_loop %>
							</div> 
						</div> 
					</div> 
					<% end_if %> 


					
				</div>
				<div class="col-md-4">
					<div class="boxFocus">
								<h2>Enquire Now</h2>
								<form method="post" action="js-plugin/neko-contact-ajax-plugin/php/form-handler.php" id="contactfrm" role="form" novalidate="novalidate">

									<div class="form-group">
										<label for="name">Name</label>
										<input type="text" class="form-control" name="name" id="name" placeholder="Enter name" title="Please enter your name (at least 2 characters)">
									</div>
									<div class="form-group">
										<label for="email">Email</label>
										<input type="email" class="form-control" name="email" id="email" placeholder="Enter email" title="Please enter a valid email address">
									</div>
									<div class="form-group">
										<label for="phone">Phone</label>
										<input name="phone" class="form-control required digits" type="tel" id="phone" size="30" value="" placeholder="Enter email phone" title="Please enter a valid phone number (at least 10 characters)">
									</div>
									<div class="form-group">
										<label for="groupsize">Group Size</label>
										<input type="text" class="form-control" name="groupsize" id="groupsize" placeholder="Enter group size" title="Please enter your group size">
									</div>

									<div class="form-group">
										<label for="comments">Comments</label>
										<textarea name="comment" class="form-control" id="comments" cols="3" rows="5" placeholder="Enter your message…" title="Please enter your message (at least 10 characters)"></textarea>
									</div>
									
									<div class="result"></div>
									<button name="submit" type="submit" class="btn btn-primary" id="submit"> Submit Enquiry</button>

								</form>
							</div>
					
				</div>
				
			</div>
			<hr >
		</div>
		




		<% loop Menu(1) %>
			<% if ClassName="HomePage" %>
				<section class="color1" id="services">
					<div class="title color2">
						<h1>The real boating experience in Ibiza</h1>
						<h2 class="subTitle">Boats Ibiza is the number one resource in Ibiza and Formentera for boat hire and water-sports.</h2>
					</div>
				</section>
				<% if CallToActionBlocks %>
				<section class="team mb30 mt30">
					<div class="container">
						<div class="row">
							
							<% loop CallToActionBlocks.Sort(SortOrder) %>
							<div class="col-sm-3">
								<article>
									<div><% loop Image %><img src="$CroppedImage(263,263).URL" alt="" class="img-responsive"><% end_loop %></div>
									<div class="boxContent color1 text-center">
										<h3>$Title</h3>
										<p>$Content</p>
										<% if CTALink %>
										<p><a href="$CTALink" class="btn btn-primary btn-sm">View Packages</a></p>
										<% end_if %>
									</div>
								</article>
							</div>
							<% end_loop %>

						</div>

					</div>
				</section>
				<% end_if %>
			<% end_if %>
		<% end_loop %>
		<!-- call to action -->
				<section>
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="color1 ctaBox mb15">
										<div class="row">
											<div class="col-md-8">
												<h1 style="margin-left:20px;">
													<strong>Book your boat hire in ibiza</strong>  <br>with the number 1 ranked boat hire company, boatsibiza.com
												</h1>

											</div>
											<div class="col-md-4">
												<a class="btn btn-lg btn-inverse" style="margin-right:20px;" title="" href="$contact-us" target="blank">
													<i class="icon-star"></i> Contact Us
												</a>
											</div>
										</div>
								</div>
							</div>
						</div>
					</div>

				</section>
				<!-- call to action -->


	</section>

	<!-- parallax quote --> 
				<section id="paralaxSlice1" data-stellar-background-ratio="0.5">
					<div class="maskParent">
						<div class="paralaxMask"></div>
						<div class="paralaxText">
							<i class="icon-star iconMedium"></i><i class="icon-star iconMedium"></i><i class="icon-star iconMedium"></i><i class="icon-star iconMedium"></i><i class="icon-star iconMedium"></i>
							<blockquote class="mt15">
								Ranked Number 1 on TripAdvisor with a Certificate of Excellence 2014</small>
							</blockquote>
						</div>
					</div>
				</section>
				<!-- parallax quote --> 

</section>
<!-- content -->