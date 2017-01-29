class Tv
  attr_accessor :power, :volume , :channel
  def initialize(tv_attributes)
    @power = tv_attributes[:power]
    @volume = tv_attributes[:volume]
    @channel = tv_attributes[:channel]
  end
end

class Remote < Tv
  attr_accessor :television
  def initialize(television)
    @television =television[:television]
  end
  def choose_televisions(television)
      @television << television

  end

  def toggle_power(tv)
      if tv.power == "on"
        return "off"
      else
        return "on"
      end
  end
  def increment_volume(tv)
      return tv.volume += 1
  end

  def decrement_volume(tv)
    return tv.volume -= 1
  end

  def set_channel(integer)
    return channel << integer
  end
end
sharpe = Tv.new({power: "off", volume: 25, channel: 167})
sony = Tv.new({power: "on", volume: 100, channel: 45})
remote1 = Remote.new(television: [sharpe, sony])

p remote1
