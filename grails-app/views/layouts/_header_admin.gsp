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
            		<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
					<li><g:link class="list" action="show" id="${bexposeUserInstance?.id}"><g:message code="bexposeUser.list.members.label"/></g:link></li>
					<li><g:remoteLink class="create" action="create" id="${params.id}" onSuccess="launchMediumPopup('Add new member', data, 'Create')"><g:message code="bexposeUser.new.label"/></g:remoteLink></li>
					<li><g:link action="profile" id="${bexposeUserInstance?.id}"><g:message code="bexposeUser.profile.label"/></g:link></li>
					<li><a href="${createLink(controller: 'logout')}">${message(code: 'bexposeUser.logout', default: 'Log out')}</a></li>
				</ul>
			</div><!-- /.nav-collapse -->
		</div>
	</div><!-- /navbar-inner -->
</div>
