<!DOCTYPE htm>
<html>
<head>
<title>Step Price Book</title>
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'bootstrap-theme.css')}"
	type="text/css">
	<style type='text/css' media='screen'>
		#login .inner .fheader {
		padding: 18px 26px 14px 26px;
		background-color: #f7f7ff;
		margin: 0px 0 14px 0;
		color: #2e3741;
		font-size: 18px;
		font-weight: bold;
	}
	</style>
</head>
<body>
	<div id='login'>
		<div class='container'>

		<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
		</g:if>

		<form class="form-signin" action='${resource(file: 'j_spring_security_check')}'
			method='POST' id='loginForm' autocomplete='off'>
			<label id="remember_me_holder"> <input type='checkbox'
				class='chk' name='${rememberMeParameter}' id='remember_me'
				<g:if test='${hasCookie}'>checked='checked'</g:if> />
				<g:message code="springSecurity.login.remember.me.label" />
			</label> 
		    <input type='text' class='form-control' name='j_username' id='username' 
		    placeholder="Username" required autofocus /> 
			<input type='password' class='form-control' name='j_password' id='password' 
			placeholder="Password" required /> 
			<input class="button" type='submit' id="submit" value='${message(code: "springSecurity.login.button")}' />

		</form>
	</div>
	</div>
</body>
</html>