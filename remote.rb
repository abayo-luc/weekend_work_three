require "./tv.rb"
class Remote < Tv
  attr_accessor :televisions
  def initialize(television)
    super
    @televisions = television[:televisions]
  end
  def choose_televisions(television)
      @televisions << television

  end

  def toggle_power
      if @power == "on"
        puts "off"
      else
        return "on"
      end
  end
  def increment_volume
      return @volume += 1
  end

  def decrement_volume
    return @volume -= 1
  end

  def set_channel(integer)
      @channel << integer
  end
end
