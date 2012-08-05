<%@ page import="reachforce.EmailUser" %>



<div class="fieldcontain ${hasErrors(bean: emailUserInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="emailUser.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" maxlength="200" value="${emailUserInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailUserInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="emailUser.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" maxlength="200" value="${emailUserInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailUserInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="emailUser.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${emailUserInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailUserInstance, field: 'fromEmail', 'error')} ">
	<label for="fromEmail">
		<g:message code="emailUser.fromEmail.label" default="From Email" />
		
	</label>
	<g:field type="email" name="fromEmail" value="${emailUserInstance?.fromEmail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailUserInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="emailUser.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" maxlength="11" value="${emailUserInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailUserInstance, field: 'subject', 'error')} ">
	<label for="subject">
		<g:message code="emailUser.subject.label" default="Subject" />
		
	</label>
	<g:textField name="subject" maxlength="50" value="${emailUserInstance?.subject}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailUserInstance, field: 'bodyText', 'error')} ">
	<label for="bodyText">
		<g:message code="emailUser.bodyText.label" default="Body Text" />
		
	</label>
	<g:textArea name="bodyText" cols="40" rows="5" maxlength="255" value="${emailUserInstance?.bodyText}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailUserInstance, field: 'userName', 'error')} ">
	<label for="userName">
		<g:message code="emailUser.userName.label" default="User Name" />
		
	</label>
	<g:textField name="userName" maxlength="250" value="${emailUserInstance?.userName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailUserInstance, field: 'passWord', 'error')} ">
	<label for="passWord">
		<g:message code="emailUser.passWord.label" default="Pass Word" />
		
	</label>
	<g:textField name="passWord" maxlength="250" value="${emailUserInstance?.passWord}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailUserInstance, field: 'host', 'error')} ">
	<label for="host">
		<g:message code="emailUser.host.label" default="Host" />
		
	</label>
	<g:textField name="host" maxlength="250" value="${emailUserInstance?.host}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailUserInstance, field: 'port', 'error')} ">
	<label for="port">
		<g:message code="emailUser.port.label" default="Port" />
		
	</label>
	<g:textField name="port" maxlength="3" value="${emailUserInstance?.port}"/>
</div>

