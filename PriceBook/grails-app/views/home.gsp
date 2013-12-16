<!DOCTYPE html>
<html>
<head>
<r:require module="fileuploader" />
<r:layoutResources />
</head>
<body>
	<g:link controller="${Logout}">Logout</g:link>
	<uploader:uploader id="yourUploaderId" />
	<uploader:uploader id="yourUploaderId">
		<uploader:onComplete>
    		$('statusDiv').update('Thank you for uploading the file '+fileName);  
 		 </uploader:onComplete>
	</uploader:uploader>
	<r:layoutResources />
</body>
</html>