require 'spec_helper'

describe MegaCorps::Player do
  before :each do
    @player = MegaCorps::Player.new
  end

  context 'credits' do
    it 'has a credit total' do
      expect(@player).to respond_to :credits
    end

    it 'allows you to set credits' do
      expect(@player).to respond_to :credits=
    end

    it 'casts to an int' do
      @player.credits = '450'
      expect(@player.credits).to eq 450
    end
  end

  context 'buildings' do
    it 'has some buildings' do
      expect(@player).to respond_to :buildings
    end

    it 'does not let you set the building list' do
      expect(@player).to_not respond_to :buildings=
    end
  end

  context 'corp' do
    it 'has one corp' do
      expect(@player).to respond_to :corp
    end

    it 'does not allow you to set the corp' do
      expect(@player).to_not respond_to :corp=
    end
  end

  context 'employees' do
    it 'has some employees' do
      expect(@player).to respond_to :employees
    end

    it 'does not let you set the employee list' do
      expect(@player).to_not respond_to :employees=
    end
  end

  context 'hire' do
    it 'adds an employee to the list' do
      employee = MegaCorps::Employee.new
      expect(@player.hire(employee)).to be_truthy
      expect(@player.employees).to include employee
    end

    it "deducts the employee's salary from the corp's credits" do
      credits = @player.credits
      employee = MegaCorps::Employee.new 100
      expect(@player.hire(employee)).to be_truthy
      expect(@player.credits).to eq(credits - 100)
    end

    it 'fails if the player does not have enough money' do
      @player.credits = 0
      employee = MegaCorps::Employee.new 100
      expect { @player.hire(employee) }.to raise_exception MegaCorps::InsufficientFunds
    end
  end
end
