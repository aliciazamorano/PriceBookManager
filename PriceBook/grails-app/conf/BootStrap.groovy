import com.gmongo.GMongo
import com.jalasoft.pricemanager.Role
import com.jalasoft.pricemanager.User
import com.jalasoft.pricemanager.UserRole
import java.util.List

class BootStrap {

	def init = { servletContext ->
		
		def user1 = new User(username : 'alicia', password:'alicia',email:'emailalicia',enabled:true,
			accountExpired : false , accountLocked : false ,passwordExpired : false)
		user1.save(flush:true, insert:true)
		def role1 = new Role(authority:'ROLE_USER');
		role1.save(flush: true, insert:true)
		UserRole.create(user1, role1, true)
		
	}
	
	def destroy = {
	}
}
