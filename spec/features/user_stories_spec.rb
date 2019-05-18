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
  # end
  end 

end
