package groovy;
import org.springframework.web.multipart.MultipartFile
import org.codehaus.groovy.grails.web.context.ServletContextHolder

class FileUploadService {
	boolean transactional = true;
	def String uploadFile(MultipartFile file, String name, String destinationDirectory){
		def servletContext = ServletContextHolder.servletContext
		def storagePath = servletContext.getRealPath(destinationDirectory)
		
		def storagePathDirectory =  new File(storagePath);
		
		if (!file.isEmpty()) {
			file.transferTo("e:\\utils")
			print("Saved file");
		}
		
	}
}
