class User < ActiveRecord::Base
    has_many :orders
    validates :username, presence: true, length: { minimum: 6 }
	validates :password, presence: true, length: { minimum: 6 }

end