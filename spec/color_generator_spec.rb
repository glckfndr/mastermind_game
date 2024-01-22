require 'spec_helper'


describe ColorGenerator do
  let(:color_set) { Set.new(described_class::COLORS) }
  describe 'get method' do
    it 'returns string of length 3 from the set {r,g,b,y,m,o}' do
      10.times do
        str = subject.get
        str_set = Set.new(str.split(''))
        puts str
        expect(str.length).to eq(3)
        expect(color_set.superset?(str_set)).to be_truthy
      end
    end
  end
end
