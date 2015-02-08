class Adventure < ActiveRecord::Base
	 validates :animal, presence: true, length: { minimum: 3 }
	 validates :amount, presence: true
end
