require 'spec_helper'

describe User do
	describe "validations" do
		it { should belong_to(:admin) }
		it { should have_many(:measurements) }
	end
end