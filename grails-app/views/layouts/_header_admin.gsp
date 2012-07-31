<div class="navbar">
	<div class="navbar-inner">
    	<div class="container" >
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            	<span class="icon-bar"></span>
            	<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
        	<a class="brand" href="${createLink(uri: '/')}">Business Expose</a>
        	<div class="nav-collapse">
          		<ul class="nav">
            		<li class="active"><a href="${createLink(uri: '/')}">Home</a></li><!-- 
            		<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li> -->
					<li><a href="${createLink(controller: 'logout')}">${message(code: 'logout', default: 'Log-out')}</a></li>
				</ul>
			</div><!-- /.nav-collapse -->
		</div>
	</div><!-- /navbar-inner -->
</div>
