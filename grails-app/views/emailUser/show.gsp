
<%@ page import="reachforce.EmailUser" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'emailUser.label', default: 'EmailUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-emailUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-emailUser" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list emailUser">
			
				<g:if test="${emailUserInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="emailUser.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${emailUserInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailUserInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="emailUser.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${emailUserInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailUserInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="emailUser.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${emailUserInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailUserInstance?.fromEmail}">
				<li class="fieldcontain">
					<span id="fromEmail-label" class="property-label"><g:message code="emailUser.fromEmail.label" default="From Email" /></span>
					
						<span class="property-value" aria-labelledby="fromEmail-label"><g:fieldValue bean="${emailUserInstance}" field="fromEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailUserInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="emailUser.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${emailUserInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailUserInstance?.subject}">
				<li class="fieldcontain">
					<span id="subject-label" class="property-label"><g:message code="emailUser.subject.label" default="Subject" /></span>
					
						<span class="property-value" aria-labelledby="subject-label"><g:fieldValue bean="${emailUserInstance}" field="subject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailUserInstance?.bodyText}">
				<li class="fieldcontain">
					<span id="bodyText-label" class="property-label"><g:message code="emailUser.bodyText.label" default="Body Text" /></span>
					
						<span class="property-value" aria-labelledby="bodyText-label"><g:fieldValue bean="${emailUserInstance}" field="bodyText"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailUserInstance?.userName}">
				<li class="fieldcontain">
					<span id="userName-label" class="property-label"><g:message code="emailUser.userName.label" default="User Name" /></span>
					
						<span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${emailUserInstance}" field="userName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailUserInstance?.passWord}">
				<li class="fieldcontain">
					<span id="passWord-label" class="property-label"><g:message code="emailUser.passWord.label" default="Pass Word" /></span>
					
						<span class="property-value" aria-labelledby="passWord-label"><g:fieldValue bean="${emailUserInstance}" field="passWord"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailUserInstance?.host}">
				<li class="fieldcontain">
					<span id="host-label" class="property-label"><g:message code="emailUser.host.label" default="Host" /></span>
					
						<span class="property-value" aria-labelledby="host-label"><g:fieldValue bean="${emailUserInstance}" field="host"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailUserInstance?.port}">
				<li class="fieldcontain">
					<span id="port-label" class="property-label"><g:message code="emailUser.port.label" default="Port" /></span>
					
						<span class="property-value" aria-labelledby="port-label"><g:fieldValue bean="${emailUserInstance}" field="port"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${emailUserInstance?.id}" />
					<g:link class="edit" action="edit" id="${emailUserInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
