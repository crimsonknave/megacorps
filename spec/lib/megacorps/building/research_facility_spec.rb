require 'spec_helper'

describe MegaCorps::ResearchFacility do
  context '.cost' do
    it 'has a cost' do
      expect(subject.cost).to_not be_nil
    end
  end
end
