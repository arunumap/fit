class Admin < OmniAuth::Identity::Models::ActiveRecord
	has_many :users
end
