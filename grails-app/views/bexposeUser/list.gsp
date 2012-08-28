
<%@ page import="businessexpose.BexposeUser" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bexposeUser.label', default: 'BexposeUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
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
					<div id="list-bexposeUser" class="content scaffold-list" role="main">
						<h1><g:message code="default.list.label" args="[entityName]" /></h1>
						<g:if test="${flash.message}">
						<div class="message" role="status">${flash.message}</div>
						</g:if>
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
								
									<g:sortableColumn property="name" title="${message(code: 'bexposeUser.name.label', default: 'Name')}" />
																
									<g:sortableColumn property="accountExpired" title="${message(code: 'bexposeUser.accountExpired.label', default: 'Account Expired')}" />
								
									<g:sortableColumn property="accountLocked" title="${message(code: 'bexposeUser.accountLocked.label', default: 'Account Locked')}" />
								
									<g:sortableColumn property="activated" title="${message(code: 'bexposeUser.activated.label', default: 'Activated')}" />
								
									<g:sortableColumn property="enabled" title="${message(code: 'bexposeUser.enabled.label', default: 'Enabled')}" />
								
								</tr>
							</thead>
							<tbody>
							<g:each in="${bexposeUserInstanceList}" status="i" var="bexposeUserInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								
									<td><g:link action="show" id="${bexposeUserInstance.id}">${fieldValue(bean: bexposeUserInstance, field: "name")}</g:link></td>
								
									<td><g:formatBoolean boolean="${bexposeUserInstance.accountExpired}" /></td>
								
									<td><g:formatBoolean boolean="${bexposeUserInstance.accountLocked}" /></td>
								
									<td><g:formatBoolean boolean="${bexposeUserInstance.activated}" /></td>
								
									<td><g:formatBoolean boolean="${bexposeUserInstance.enabled}" /></td>
								
								</tr>
							</g:each>
							</tbody>
						</table>
						<div class="pagination">
							<g:paginate total="${bexposeUserInstanceTotal}" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
