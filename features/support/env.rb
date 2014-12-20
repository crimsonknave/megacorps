require 'megacorps'

class GameWorld
  def initialize
    @players = 2.times.map { MegaCorps::Player.new }
  end

  def random_employee
  end
end

World do
  GameWorld.new
end
