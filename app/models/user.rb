class User < ActiveRecord::Base
	has_secure_password
	has_many :albums
	has_many :favorites
	has_many :favalbums, through: :favorites, source: :album
end
