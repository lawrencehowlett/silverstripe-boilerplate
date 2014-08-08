<section id="page">
	<header class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h1>$Title</h1>
				</div>
			</div>
		</div>
	</header>
	<section id="content" class="mt30 pb30">
		<section class="intro">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="boxFocus color1 mb30">
							$Content
						</div>
					</div>
				</div>
			</div>	
		</section>
		<section class="pb30"> 
			<div class="container clearfix">
				<div class="row">
					<div class="col-md-12 imgHover">
						<% loop LinkedBoatPages %>
						<% loop getPage %>
						<!-- portfolio item -->
						<article class="portfolioItem row">

							<div class="col-md-4">
								<% loop FeaturedImage %>
								<img alt="" src="$CroppedImage(360,280).URL" class="img-responsive imgBorder">
								<% end_loop %>
							</div>

							<div class="col-md-8">

								<h2>$Title </h2>
								<p>$ShortDescription</p>
								<a href="$Link" class="btn btn-lg btn-primary" title="link">Find out more</a>

							</div>

						</article>
						<!-- portfolio item -->
						<hr/>
						<% end_loop %>
						<% end_loop %>
					</div>
				</div>
			</div>
		</section>
	</section>
</section>