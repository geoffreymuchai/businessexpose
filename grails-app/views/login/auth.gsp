<html>
<head>
	<meta name='layout' content='auth'/>
	<title><g:message code="springSecurity.login.title"/></title>
	
</head>

<body>

	<div class="container">
		<div class="modal" id="loginMdl">
			<div class="modal-header">
			    <h3><g:message code="springSecurity.login.header"/></h3>
				<g:if test='${flash.message}'>
					<div class='login_message'>${flash.message}</div>
				</g:if>
		  	</div>
		
			<div class="modal-body">
				<form class="form-horizontal" action='${postUrl}' method='POST' id='loginForm' autocomplete='off'>
					<div class="control-group">
						<label for='username' class='control-label'><g:message code="springSecurity.login.username.label"/>:</label>
						<div class="controls">
							<input type='text' name='j_username' id='username' required="" data-message="${message(code:'springSecurity.login.username.error', default:'Username required')}"/>
						</div>
					</div>
					<div class="control-group">
						<label for='password' class='control-label'><g:message code="springSecurity.login.password.label"/>:</label>
						<div class="controls">
							<input type='password' class='text_' name='j_password' id='password' required="" data-message="Enter an appropriate password"/>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<label class="checkbox" for='remember_me'><input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/><g:message code="springSecurity.login.remember.me.label"/></label>
						</div>
					</div>
				
					<div class="form-actions">
						<input type='submit' class="btn btn-primary" id="submit" value='${message(code: "springSecurity.login.button")}'/>
					</div>
				</form>
			</div>
		</div>
	<div>
</body>
</html>
