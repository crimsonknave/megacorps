module MegaCorps
  class Player
    attr_reader :buildings, :credits, :corp, :employees

    def initialize
      @employees = []
      @credits = 500
    end

    def credits=(credits)
      @credits = credits.to_i
    end

    def hire(employee)
      fail InsufficientFunds, "Employee costs #{employee.salary}, you only have #{credits}" if credits < employee.salary
      self.credits -= employee.salary
      employees << employee
    end

    def buy_building(building_name)
      building = MegaCorps.const_get(building_name.classify).new
      @credits -= building.cost
      building
    end
  end
end
