module MegaCorps
  class Player
    attr_accessor :credits
    attr_reader :buildings, :corp, :employees

    def initialize
      @employees = []
      @credits = 500
    end

    def hire(employee)
      fail InsufficientFunds, "Employee costs #{employee.salary}, you only have #{credits}" if credits < employee.salary
      self.credits -= employee.salary
      employees << employee
    end
  end
end
