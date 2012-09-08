<%@ page import="businessexpose.BexposeUser" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'bexposeUser.label', default: 'BexposeUser')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
			<div>
				<div id="edit-bexposeUser" class="content scaffold-edit" role="main">
					<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
					</g:if>
					<g:hasErrors bean="${bexposeUserInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${bexposeUserInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
					</g:hasErrors>
					<table class="table">
						<thead>
							<th class="center">
								<h2><g:message code="bexpose.account.label" /></h2>
							</th>
						</thead>
						<tbody>
							<tr class="well">
								<td class="span10">
									<g:form method="post" class="form">
										<g:hiddenField name="id" value="${bexposeUserInstance?.id}" />
										<g:hiddenField name="version" value="${bexposeUserInstance?.version}" />
										<fieldset class="form">
											<g:render template="form"/>
											<fieldset class="buttons">
												<g:actionSubmit class="btn btn-primary save push-4" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
											</fieldset>
										</fieldset>
									</g:form>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</body>
</html>
