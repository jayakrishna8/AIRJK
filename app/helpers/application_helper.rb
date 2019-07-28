module ApplicationHelper
	def avatar_url(user, size)	   
	   if user.image
	   	 "http://graph.facebook.com/#{user.uid}/picture?type=large" 
	   else 
		 gravatar_id = Digest::MD5::hexdigest(user.email).downcase
     	 url = "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
	   end
	end
end
