Given(/a player with (\d+) credits/i) do |credits|
  @player = @players.first
  @player.credits = credits
end

Then(/the player should be able to hire (\d+) employees?/i) do |num|
  num.to_i.times do
    @player.hire @employees.pop
  end
end
