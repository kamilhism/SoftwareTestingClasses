class Generate
  def self.number(min = 0, max = 10000)
    Random.new.rand(min...max)
  end
end
