module ApplicationHelper

	def avatar_url(user)
		if user.avatar_url.present?
			user.avatar_url
		else
			default_url = "#{root_url}images/guest.png"
			gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
			"http://gravatar.com/avatar/#{gravatar_id}.jpg?s=35"
		end
	end

end
