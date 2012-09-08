<%@ page import="businessexpose.BexposeUser" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="popup">
	</head>
	<body>
		<div>
			<div>
				<div id="create-bexposeUser" class="content scaffold-create" role="main">
					<g:hasErrors bean="${bexposeUserInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${bexposeUserInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
					</g:hasErrors>
					<g:if test="${bexposeUserInstance?.id}">
						<g:form action="addMember" id="bexposeUserInstance?.id">
							<fieldset class="form">
								<g:render template="form"/>
							</fieldset>
						</g:form>
					</g:if>
					<g:else>
						<g:form action="save" >
							<fieldset class="form">
								<g:render template="form"/>
							</fieldset>
						</g:form>
					</g:else>
				</div>
			</div>
		</div>
	</body>
</html>
