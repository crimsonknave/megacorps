require 'spec_helper'

describe MegaCorps::Employee do
  let(:klass) { MegaCorps::Employee }
  subject(:employee) { klass.new }
  context 'salary' do
    it 'has a salary' do
      expect(employee).to respond_to :salary
    end

    it 'lets you set the salary' do
      expect(employee).to respond_to :salary=
    end

    it 'defaults to something' do
      expect(klass.new.salary).to_not be_nil
    end

    it 'can be set on initialize' do
      expect(klass.new(120).salary).to eq 120
    end
  end
end
