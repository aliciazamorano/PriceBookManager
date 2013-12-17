<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css"></link>
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'jumbotron.css')}" type="text/css"></link>
<g:layoutHead />
<r:layoutResources />
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" data-target=".navbar-collapse"
					data-toggle="collapse" type="button">
					<span class="sr-only"> … </span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand"
					href="${resource(dir: 'view', file: 'index')}"> Price Manager </a>
				<sec:ifLoggedIn>
					<div class="navbar-fixed-top">
						<div class="container">
							<div class="navbar-brand navbar-collapse collapse navbar-right">
								Wellcome!
								<sec:username />
								-
								<g:link controller="${Logout}">Logout</g:link>
							</div>
						</div>
					</div>
				</sec:ifLoggedIn>

			</div>
		</div>
	</div>

	<g:layoutBody />
	<r:layoutResources />
</body>
</html>