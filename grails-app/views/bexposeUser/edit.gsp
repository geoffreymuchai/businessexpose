<%@ page import="businessexpose.BexposeUser" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bexposeUser.label', default: 'BexposeUser')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span2">
					<div class="nav nav-list well" role="navigation">
						<ul>
							<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
							<li><g:link class="list" action="list"><g:message code="bexposeUser.list.label"/></g:link></li>
							<li><g:link class="create" action="create"><g:message code="bexposeUser.new.label"/></g:link></li>
						</ul>
					</div>
				</div>
				<div class="span10">
					<div id="edit-bexposeUser" class="content scaffold-edit" role="main">
						<h1><g:message code="bexpose.edit.label" args="[bexposeUserInstance?.name]" /></h1>
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
						<g:form method="post" >
							<g:hiddenField name="id" value="${bexposeUserInstance?.id}" />
							<g:hiddenField name="version" value="${bexposeUserInstance?.version}" />
							<fieldset class="form">
								<g:render template="form"/>
							</fieldset>
							<fieldset class="buttons">
								<g:actionSubmit class="btn btn-primary save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
								<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
							</fieldset>
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
