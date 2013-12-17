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

			<div class="content scaffold-list" role="main">

				<h2>Document List</h2>

				<div class="nav" role="navigation">
					<ul>
						<li><g:link class="create" action="create">Upload New Document</g:link></li>
					</ul>
				</div>

				<g:if test="${flash.message}">
					<div class="message" role="status">
						${flash.message}
					</div>
				</g:if>
				<table>
					<thead>
						<tr>
							<g:sortableColumn property="filename" title="Filename" />
						</tr>
					</thead>
					<tbody>
						<g:each in="${documentInstanceList}" status="i"
							var="documentInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								<td><g:link action="download" id="${documentInstance.id}">
										${documentInstance.filename}
									</g:link></td>
								<td><button id="${documentInstance.id}"
										class="btn btn-success btn-sm">Process Document</button></td>
							</tr>
						</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${documentInstanceTotal}" />
				</div>
			</div>
		</div>
	</div>

	<r:layoutResources />
</body>
</html>