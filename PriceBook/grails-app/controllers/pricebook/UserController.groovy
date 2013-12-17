package pricebook

import com.jalasoft.pricemanager.User

class UserController {
	
	def getLoggedUser = {
		User user = SpringSecurityService.getCurrentUser();
		[CurrentUserLogged: user]
		return user;
	}

}
