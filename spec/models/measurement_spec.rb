require 'spec_helper'

describe Measurement do
	describe "validations" do
		it { should belong_to(:user) }
	end
end