class Tv
  attr_accessor :power, :volume , :channel
  def initialize(tv_attributes)
    @power = tv_attributes[:power]
    @volume = tv_attributes[:volume]
    @channel = tv_attributes[:channel]
  end
end
