<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'bexposeUser.label', default: 'BexposeUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
			<div id="show-bexposeUser" class="content scaffold-show" role="main">
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th class="center" colspan='3'>
								<h2><g:message code="bexpose.account.label" /></h2>
								<g:link action="edit" id="${bexposeUserInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
							</th>
						</tr>
					</thead>
					<tbody>
						<g:if test="${bexposeUserInstance?.name}">
							<tr>
								<td class="fieldcontain  ">
									<span id="username-label" class="property-label"><g:message code="bexposeUser.name.label" default="Name" /></span>
								</td>
								<td>
									<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${bexposeUserInstance}" field="name"/></span>
								</td>
							</tr>
						</g:if>
						<g:if test="${bexposeUserInstance?.username}">
							<tr>
								<td class="fieldcontain span3">
									<span id="username-label" class="property-label"><g:message code="bexposeUser.username.label" default="Username" /></span>
								</td>
								<td>
									<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${bexposeUserInstance}" field="username"/></span>
								</td>
							</tr>
						</g:if>
						<g:if test="${bexposeUserInstance?.email}">
							<tr>
								<td class="fieldcontain span3">
									<span id="email-label" class="property-label"><g:message code="bexposeUser.email.label" default="Email" /></span>
								</td>
								<td>
									<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${bexposeUserInstance}" field="email"/></span>
								</td>
							</tr>
						</g:if>
					
						<g:if test="${bexposeUserInstance?.activated}">
						<tr>
							<td class="fieldcontain span3">
								<span id="activated-label" class="property-label"><g:message code="bexposeUser.activated.label" default="Activated" /></span>
							</td>
							<td>
								<span class="property-value" aria-labelledby="activated-label"><g:formatBoolean boolean="${bexposeUserInstance?.activated}" /></span>
							</td>
						</tr>
						</g:if>
					</tbody>
				
				</table>
			</div>
		</div>
	</body>
</html>