package pricebook
import com.jalasoft.pricemanager.User
@Grab(group='com.gmongo', module='gmongo', version='0.9.3')
import com.gmongo.GMongo
class DocumentController {

       static allowedMethods = [save: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = 10
        [documentInstanceList: Document.list(params), documentInstanceTotal: Document.count()]
    }

    def create() {
    }

    def upload() {
        def file = request.getFile('file')
        if(file.empty) {
            flash.message = "File cannot be empty"
        } else {
            def documentInstance = new Document()
            documentInstance.filename = file.originalFilename
            documentInstance.filedata = file.getBytes()
            documentInstance.save()
        }
        redirect (action:'list')
    }

    def download(long id) {
        Document documentInstance = Document.get(id)
        if ( documentInstance == null) {
            flash.message = "Document not found."
            redirect (action:'list')
        } else {
            response.setContentType("APPLICATION/OCTET-STREAM")
            response.setHeader("Content-Disposition", "Attachment;Filename=\"${documentInstance.filename}\"")

            def outputStream = response.getOutputStream()
            outputStream << documentInstance.filedata
            outputStream.flush()
            outputStream.close()
        }
    }
	
	def process(long id) {
		Document documentInstance = Document.get(id)
		if (documentInstance == null) {
			print("document not found")
		}
		System.out.println(documentInstance.filename);
	}
}
