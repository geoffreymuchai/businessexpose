<%@ page import="businessexpose.BexposeUser" %>
<div class="fieldcontain ${hasErrors(bean: bexposeUserInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="bexposeUser.name.label" default="Name" />
		
	</label>
	<g:textField name="name" required="true" value="${bexposeUserInstance?.name}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: bexposeUserInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="bexposeUser.email.label" default="Email" />
	</label>
	<g:textField name="email" required="true" value="${bexposeUserInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bexposeUserInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="bexposeUser.username.label" default="Username" />
	</label>
	<g:textField name="username" required="true" value="${bexposeUserInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bexposeUserInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="bexposeUser.password.label" default="Password" />
	</label>
	<g:passwordField name="password" required="true" value="${bexposeUserInstance?.password}"/>
</div>