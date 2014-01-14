require 'spec_helper'

describe Admin do
	describe "validations" do
  	it { should have_many(:users) }
	end

	describe "Admin Functionality" do
		let(:doctor) { FactoryGirl.create(:admin) }
		let(:patient) { FactoryGirl.create(:user) }

		it "can acquire a user" do
			
			expect().to
		end


	end
end
