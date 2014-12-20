Given(/a player with (\d+) credits/i) do |credits|
  @player = @players.first
  @player.credits = credits
end

Given(/a player with (\d+) employees/i) do |num|
  @player = @players.first
  num.times do

Then(/the player should be able to hire (\d+) employees?/i) do |num|
  cost = 0
  starting_credits = @player.credits
  num.to_i.times do
    employee = @employees.pop
    @player.hire employee
    cost += employee.salary
  end

  expect(@player.credits).to eq(starting_credits - cost)
end

Then(/the player should be able to buy a (\w+)/i) do |building_name|
  starting_credits = @player.credits
  building = @player.buy_building building_name
  expect(@player.credits).to eq(starting_credits - building.cost)
end
