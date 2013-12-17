<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8"></meta>
        <meta content="IE=edge" http-equiv="X-UA-Compatible"></meta>
        <meta content="width=device-width, initial-scale=1.0" name="viewport"></meta>
        <meta content="" name="description"></meta>
        <meta content="" name="author"></meta>
        <title> … </title>
        <!--

         Bootstrap core CSS 

        -->
        <link rel="stylesheet" href= "${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css" ></link>
        <!--

         Custom styles for this template 

        -->
        <link rel="stylesheet"  href="${resource(dir: 'css', file: 'jumbotron.css')}" type="text/css"></link>
    </head>
    <body>
	   <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	    <div class="container">
	        <div class="navbar-header">
	            <button class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse" type="button">
	                <span class="sr-only"> … </span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	            </button>
	            <a class="navbar-brand" href="${resource(dir: 'view', file: 'index')}">
	
	                Price Manager
	
	            </a>
	        </div>
	        <div class="navbar-collapse collapse">
		        <g:if test='${flash.message}'>
					<div class='login_message'>${flash.message}</div>
				</g:if>
	            <form class="navbar-form navbar-right" role="form" action='${resource(file: 'j_spring_security_check')}'
	              	method='POST' id='loginForm' autocomplete='off'>
	              	<!-- label id="remember_me_holder"> <input type='checkbox'
							class='chk' name='${rememberMeParameter}' id='remember_me'
							<g:if test='${hasCookie}'>checked='checked'</g:if> />
							<g:message code="springSecurity.login.remember.me.label" />
					</label--> 
	                <div class="form-group">
	                    <input class="form-control" type="text" name='j_username' id='username' placeholder="Email"></input>
	                </div>
	                <div class="form-group">
	                    <input class="form-control" type="password" name='j_password' id='password'  placeholder="Password"></input>
	                </div>
	                <button class="btn btn-success" type="submit" id="submit" >${message(code: "springSecurity.login.button")}</button>
	            </form>
	        </div>
	      </div>
		</div>
		<div class="jumbotron">

   	    <div class="container">
   
    	<img class="sliderLogo"  src="${resource(dir: 'images', file: 'logo.png')}">
        <h2>The 5 Minute Revenue Accelerator</h2>
        <p>
             Companies search for a competitive edge every day. Better insights on their customers and markets help them keep and maintain that edge.  
        </p>
        <p>
            <a class="btn btn-primary btn-lg" role="button">

                Learn more »

            </a>
        </p>
    </div>

</div>
    </body>
</html>