require 'airport'

describe Airport do 
  let(:airport) { Airport.new }


  it 'can instruct a plane to land' do 
    plane = double('it is a plane')
    srand(100)
    allow(airport).to receive(:stormy?).and_return false 
    expect(airport.land(plane)).to eq [plane]
  end

    it 'can instruct a plane to takeoff' do 
    plane = double('it is a plane')
    srand(100)
    allow(airport).to receive(:stormy?).and_return false 
    airport.land(plane)
    airport.takeoff
    expect(airport.takeoff).to eq nil
  end
end
