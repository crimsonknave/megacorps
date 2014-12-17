require 'megacorps'

class GameWorld
  def initialize
    @players = 2.times.map { MegaCorps::Player.new }
  end
end

World do
  GameWorld.new
end
