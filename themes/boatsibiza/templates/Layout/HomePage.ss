<!-- ======================================= content ======================================= -->
		<% if SpinnerImages %>
		<section id="homeFlex" class="color2">

			<div class="flexslider flexFullScreen">
				<ul class="slides sliderWrapper">
					
					<% loop SpinnerImages.Sort(SortOrder) %>
					<li class="slideN{$Pos(0)}"> 
						<% if Image %><% loop Image %><img src="$URL" alt="$Title"/><% end_loop %><% end_if %>
						<div class="caption left">
							<% if Title %>
							<div class="element1-1" data-animation="fadeInLeftBig">
								<h1>$Title</h1>
							</div>
							<% end_if %>
							<% if BlackText %>
							<div class="element1-2" data-animation="fadeInRightBig">
								<h2>$BlackText</h2>
							</div>
							<% end_if %>
							<% if WhiteText %>
							<div class="element1-3  hidden-phone" data-animation="fadeInRightBig">
								<p>$WhiteText</p>
							</div>
							<% end_if %>
							<% if CTALink %>
							<div class="element1-4" data-animation="fadeInLeftBig"><a href="$CTALink" class="btn btn-lg">View more</a></div>
							<% end_if %>
						</div>
					</li>
					<% end_loop %>
				</ul>
			</div>

		</section>
		<% end_if %>
		<!-- slider -->

		<section id="content">
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
			<!-- services -->
			<section class="color1" id="services">
				<div class="title color2">
					<h1>The real boating experience in Ibiza</h1>
					<h2 class="subTitle">Boats Ibiza is the number one resource in Ibiza and Formentera for boat hire and water-sports.</h2>
				</div>
			</section>
			<!-- services -->


			<!-- parallax quote --> 
			<% if Reviews %>
			<section id="paralaxSlice1" data-stellar-background-ratio="0.5" class="testimonial mb30">
				<div class="maskParent">
				<div class="paralaxMask"></div>
					<div class="paralaxText container text-center">
					<div class="row">
						<div class="col-md-12">
<h2>Happy Customers!</h2>
							<div class="nekoDataOwl owl-carousel testimonialCarousel" data-neko_items="1" data-neko_singleitem="true" data-neko_pagination="true" data-neko_navigation="false">
								
								<% loop Reviews.Sort(SortOrder) %>
								<div class="item text-center">
									<blockquote class="text-center mt15">$Testimonial<br/>
									<small>$PersonName - $DateSent.Long </small></blockquote>
								</div>
								<% end_loop %>
								
							</div>

						</div>
					</div>
				</div>
				</div>

			</section>
			<% end_if %>
			<!-- parallax quote --> 


			<section>
				<div class="container">
					<div class="row pt30 pb15">
						<div class="col-md-12">
							$Content
						</div>

					</div>
				</section>

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
			<!-- end content -->