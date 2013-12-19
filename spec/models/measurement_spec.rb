require 'spec_helper'

describe Measurement do
	describe "validations" do
		it { should belong_to(:user) }
	end
	it "should exist" do
		@measurement = Measurement.new()
		expect(@measurement.analyze_activity).to_not eq nil
	end
end

end