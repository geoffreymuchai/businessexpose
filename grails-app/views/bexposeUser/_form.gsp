<%@ page import="businessexpose.BexposeUser" %>



<div class="fieldcontain ${hasErrors(bean: bexposeUserInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="bexposeUser.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${bexposeUserInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bexposeUserInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="bexposeUser.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${bexposeUserInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bexposeUserInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="bexposeUser.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${bexposeUserInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: bexposeUserInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="bexposeUser.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${bexposeUserInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: bexposeUserInstance, field: 'activated', 'error')} ">
	<label for="activated">
		<g:message code="bexposeUser.activated.label" default="Activated" />
		
	</label>
	<g:checkBox name="activated" value="${bexposeUserInstance?.activated}" />
</div>

<div class="fieldcontain ${hasErrors(bean: bexposeUserInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="bexposeUser.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${bexposeUserInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: bexposeUserInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="bexposeUser.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${bexposeUserInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bexposeUserInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="bexposeUser.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${bexposeUserInstance?.passwordExpired}" />
</div>

