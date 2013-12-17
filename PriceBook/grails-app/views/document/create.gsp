<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<r:require module="fileuploader" />
<uploader:head />
<uploader:head css="${resource(dir: 'css', file: 'bootstrap.css')}" />
<r:layoutResources />
</head>
<body>
	<div class="jumbotron">
		<div class="container">

			<div class="col-md-4" role="main">
				<h2>Upload New Document</h2>
				<div class="nav" role="navigation">
					<ul>
						<li><g:link class="list" action="list">Document List</g:link></li>
					</ul>
				</div>
				<g:if test="${flash.message}">
					<div class="message" role="status">
						${flash.message}
					</div>
				</g:if>
				<g:uploadForm controller="Document" action="upload" class="form">
					<fieldset class="form">
						<input class="form-control" type="file" name="file" />
					</fieldset>
					<fieldset class="buttons">
						<g:submitButton name="upload" class="btn btn-success"
							value="Upload" />
					</fieldset>
				</g:uploadForm>
			</div>
		</div>
	</div>

	<r:layoutResources />
</body>
</html>