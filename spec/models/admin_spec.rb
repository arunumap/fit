require 'spec_helper'

describe Admin do
	describe "validations" do
  	it { should have_many(:users) }
	end
end
