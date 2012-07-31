<head>
<meta name='layout' content='auth' />
<title><g:message code="springSecurity.denied.title" /></title>
</head>

<body>
	<div class="modal" id="loginMdl">
		<div class="modal-header">
		    <h3><g:message code="springSecurity.denied.message" /></h3>
			<g:if test='${flash.message}'>
				<div class='login_message'>${flash.message}</div>
			</g:if>
	  	</div>

		<div class="modal-body">
		</div>
	</div>
</body>
