<%@ page import="businessexpose.BexposeUser" %>

<div class="fieldcontain ${hasErrors(bean: bexposeUserInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="bexposeUser.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value=""/>
</div>
<div class="fieldcontain ${hasErrors(bean: bexposeUserInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="bexposeUser.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bexposeUserInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="bexposeUser.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bexposeUserInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="bexposeUser.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:passwordField name="password" required="" value=""/>
</div>
