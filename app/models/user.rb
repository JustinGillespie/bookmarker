class User < ActiveRecord::Base
	has_secure_password
	validates_uniqueness_of :email
	validates_presence_of :full_name

	def full_name
		[ first_name, last_name ].join(' ')
	end

	def full_name=(name)
  	split = name.split(' ', 2)
  	self.first_name = split.first
  	self.last_name = split.last
	end

	def role_name
		case self.role
			when 0 then "Admin"
			else "User"
		end
	end

end
