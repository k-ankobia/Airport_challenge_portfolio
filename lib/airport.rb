class Airport 

  def initialize
    @planes = [] 
  end 

  def land(plane)
    raise "Cannot land plane: weather is stormy" if stormy?
    @planes << plane
  end

  def takeoff
    @planes.pop
  end

  def stormy? 
    rand(1..6) > 4
  end

end
