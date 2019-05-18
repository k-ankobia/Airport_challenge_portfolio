require 'airport'

describe Airport do 
  let(:airport) { Airport.new }
  it 'can instruct a plane to land' do 
    expect(airport).to respond_to(:land).with(1).argument
  end
end
