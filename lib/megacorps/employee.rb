module MegaCorps
  class Employee
    attr_accessor :salary

    def initialize(salary = 500)
      @salary = salary
    end
  end
end
