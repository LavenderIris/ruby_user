class User < ActiveRecord::Base
	validates :first_name, :last_name, presence: true, length: { in: 2..200 }
	validates :email_address, presence: true
	validates_numericality_of :age, greater_than: 10, less_than: 150, presence: true
end
