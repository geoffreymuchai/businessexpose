
<%@ page import="businessexpose.BexposeUser" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bexposeUser.label', default: 'BexposeUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
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
					<div class="membership-form">
						<g:form>
							<g:render template="member_form" />
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${bexposeUserInstance?.id}" />
								<g:actionSubmit class="btn btn-primary edit" action="addMember" value="${message(code:'default.button.new.label', default:'Add Member')}" />
								<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
							</fieldset>
						</g:form>
					</div>
					<g:if test="${membershipInstance?.id}">
						<div class="membership-tree">
							<table id="member-tree" class="table table-bordered ">
								<thead>
									<tr>
										<td class="center" colspan='4'>${membershipInstance.leader.name}</td>
									</tr>
								</thead>	
								<tbody>
									<tr>
										<g:each in="${membershipInstance?.members}" status="i" var="memberInstance">
											<td>${memberInstance.name}</td>
										</g:each>
									</tr>
								</tbody>
							</table>
						</div>
					</g:if>
					<div id="show-bexposeUser" class="content scaffold-show" role="main">
						<h2><g:message code="bexpose.show.label" args="[bexposeUserInstance?.name]" /></h2>
						<g:if test="${flash.message}">
						<div class="message" role="status">${flash.message}</div>
						</g:if>
						<ol class="property-list">
						
							<g:if test="${bexposeUserInstance?.username}">
							<li class="fieldcontain">
								<span id="username-label" class="property-label"><g:message code="bexposeUser.username.label" default="Username" /></span>
								
									<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${bexposeUserInstance}" field="username"/></span>
								
							</li>
							</g:if>
							<g:if test="${bexposeUserInstance?.email}">
							<li class="fieldcontain">
								<span id="email-label" class="property-label"><g:message code="bexposeUser.email.label" default="Email" /></span>
								
									<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${bexposeUserInstance}" field="email"/></span>
								
							</li>
							</g:if>
						
							<g:if test="${bexposeUserInstance?.activated}">
							
							<li class="fieldcontain">
								<span id="activated-label" class="property-label"><g:message code="bexposeUser.activated.label" default="Activated" /></span>
								
									<span class="property-value" aria-labelledby="activated-label"><g:formatBoolean boolean="${bexposeUserInstance?.activated}" /></span>
								
							</li>
							</g:if>
						
						
						</ol>
						<g:form>
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${bexposeUserInstance?.id}" />
								<g:link class="btn btn-primary edit" action="edit" id="${bexposeUserInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
								<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
							</fieldset>
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
