require 'airport'

describe Airport do 
  let(:airport) { Airport.new }
  it 'can instruct a plane to land' do 
    expect(airport).to respond_to(:land).with(1).argument
  end

  it 'can instruct a plane to takeoff' do 
    expect(airport).to respond_to(:takeoff).with(1).argument
  end
end
