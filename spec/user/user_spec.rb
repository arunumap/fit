require 'spec_helper'

describe User do
	context "user data should persist" do
		it "persists" do
			auth = ["omniauth.auth"]
			expect(User.from_omniauth(auth)).to_not eq(nil)
		end
	end
end