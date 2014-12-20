Given(/there (?:is|are) (\d+) employees? in the job pool/i) do |num|
  @employees = num.to_i.times.map { MegaCorps::Employee.new }
end

Given 'a standard setup' do
  @buildings = %w(office factory research_facility)
end
