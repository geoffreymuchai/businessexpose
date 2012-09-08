<%@ page import="businessexpose.BexposeUser" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'bexposeUser.label', default: 'BexposeUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container-fluid">
			<g:if test="${membershipInstance?.id}">
				<div>
					<table id="membership-tree" class="table table-bordered ">
						<thead>
							<tr>
								<td class="bold" colspan='10'>${membershipInstance.leader.name}</td>
							</tr>
						</thead>	
						<tbody>
							<g:each in="${businessexpose.Membership.LEVEL.values()*.toString()*.toLowerCase()}" status="j" var="level">
								<g:if test="${membershipInstanceLevelList[level]}">
									<tr class="${level}">
										<g:each in="${membershipInstanceLevelList[level]}" status="i" var="memberInstance">
											<td>${memberInstance.name}</td>
										</g:each>
									</tr>
								</g:if>
							</g:each>
						</tbody>
					</table>
				</div>
			</g:if>
		</div>
	</body>
</html>
