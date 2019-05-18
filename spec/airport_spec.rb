require 'airport'

describe Airport do 
  let(:airport) { Airport.new }


  it 'can instruct a plane to land' do 
    plane = double('it is a plane')
    expect(airport.land(plane)).to eq [plane]
  end

    it 'can instruct a plane to takeoff' do 
    plane = double('it is a plane')
    airport.land(plane)
    airport.takeoff
    expect(airport.takeoff).to eq nil
  end
end
