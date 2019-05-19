describe 'User Stories' do
  # As an air traffic controller
  # So planes can land safely at my airport
  # I would like to instruct a plane to land
  it 'so planes land at airports, instruct a plane to land' do
    airport = Airport.new
    plane = Plane.new
    expect { airport.land(plane) }.not_to raise_error
  end

  
# As an air traffic controller 
# So I can get passengers on the way to their destination 
# I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport

  it ' so a plane can takeoff, instruct plane to takeoff' do 
    airport = Airport.new
    expect { airport.takeoff }.not_to raise_error
  end 

  it 'does not allow plane to land when weather is stormy' do 
    airport = Airport.new
    plane = Plane.new 
    allow(airport).to receive(:stormy?).and_return true 
    expect { airport.land(plane) }.to raise_error 'Cannot land plane: weather is stormy'
  end

  it 'does not allow plane to takeoff when weather is stormy' do 
    airport = Airport.new
    allow(airport).to receive(:stormy?).and_return true 
    expect { airport.takeoff }.to raise_error 'Cannot takeoff plane: weather is stormy'
  end
end
