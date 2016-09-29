require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }
#  it 'is working?' do
#     boris = Bike.new
#     expect(boris.working?).to eq true
#   end
end
