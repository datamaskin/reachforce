
<%@ page import="reachforce.EmailUser" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'emailUser.label', default: 'EmailUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-emailUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-emailUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'emailUser.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'emailUser.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'emailUser.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="fromEmail" title="${message(code: 'emailUser.fromEmail.label', default: 'From Email')}" />
					
						<g:sortableColumn property="phone" title="${message(code: 'emailUser.phone.label', default: 'Phone')}" />
					
						<g:sortableColumn property="subject" title="${message(code: 'emailUser.subject.label', default: 'Subject')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${emailUserInstanceList}" status="i" var="emailUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${emailUserInstance.id}">${fieldValue(bean: emailUserInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: emailUserInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: emailUserInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: emailUserInstance, field: "fromEmail")}</td>
					
						<td>${fieldValue(bean: emailUserInstance, field: "phone")}</td>
					
						<td>${fieldValue(bean: emailUserInstance, field: "subject")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${emailUserInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
