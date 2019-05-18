class Airport 

  def initialize
    @planes = [] 
  end 

  def land(plane)
    @planes << plane
  end

  def takeoff
    @planes.pop
  end
end
