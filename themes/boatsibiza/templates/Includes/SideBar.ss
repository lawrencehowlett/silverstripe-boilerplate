<aside id="sidebar" class="col-md-3">
	<% if $Menu(2) %>
		<nav id="subnav">
			<% with $Level(1) %>
				<ul>
					<% include SidebarMenu %>
				</ul>
			<% end_with %>
		</nav>
	<% end_if %>
</aside>