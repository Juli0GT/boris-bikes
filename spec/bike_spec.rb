require 'bike.rb'
describe Bike do
	subject(:bike) {described_class.new}

	it {is_expected.to respond_to :working?}

	it "can be reported as broken" do
		bike.report_broken
		expect(bike).to be_broken
	end

	it "can be reported as working" do
		bike.report_working
		expect(bike).to be_working
	end
end
