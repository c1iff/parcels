class Parcel
  define_method(:initialize) do |length, width, height, weight, distance, speed|
    @length = length
    @width = width
    @height = height
    @weight = weight
    @distance = distance
    @speed = speed
  end

  define_method(:volume) do
    @length * @width * @height
  end

  define_method(:cost_to_ship) do

    weight_cost = @weight*1.5
    volume_cost = 0
    cubic_feet = self.volume()/1728.0
    if cubic_feet > 2
      minus_two = cubic_feet-2
      while minus_two > 0
        volume_cost += 0.5
        minus_two -= 1
      end
      volume_cost
    end
    distance_cost = 2 + @distance/500
    if @speed == 1
      speed_cost = 5
    else
      speed_cost = 1
    end
    total_cost = weight_cost + volume_cost + distance_cost + speed_cost
    total_cost.round(2)
  end
end
