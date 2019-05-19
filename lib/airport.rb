class Airport 

  DEFAULT_CAPACITY = 5 
  attr_accessor :capacity
  def initialize(capacity = DEFAULT_CAPACITY)
    @planes = [] 
    @capacity = capacity
  end 

  def land(plane)
    capacity_check
    raise "Cannot land plane: weather is stormy" if stormy?

    @planes << plane
  end

  def takeoff
    raise "Cannot takeoff plane: weather is stormy" if stormy?

    @planes.pop
  end

  def stormy? 
    rand(1..6) > 4
  end

  def capacity_check
    raise 'Cannot land plane: Capacity is full' if @planes.length >= @capacity
  end

end
