class Home < ActiveRecord::Base

    has_secure_password
    
	has_many :settings
	has_many :websites

	validates_presence_of :fname
	validates_presence_of :lname

	validates_presence_of :email, uniqueness: true
	validates_presence_of :password on: :create #length: { in: 4..20 }
	validates_confirmation_of :password
end
