require "rails_helper"


RSpec.describe SortService do
  it 'creates object' do
    obj = SortService.new
    expect(obj.nil?).to eq(false)
  end
end


  describe "Sort Algorithms Check For Integer Lists" do

    before(:each) do
      @obj = SortService.new
      @a = [5, 32, 5, -1, 43, 2, -1, 32, 5]
    end

    it 'checks if merge_sort works on integers list' do
      expect(@obj.sort(@a, 'Merge Sort')==@a.sort).to eq(true)
    end

    it 'checks if quick_sort works on integers list' do
      expect(@obj.sort(@a, 'Quick Sort')==@a.sort).to eq(true)
    end
  end

  describe "Sort Algorithms Check For String Lists" do

    before(:each) do
      @obj = SortService.new
      @a = ["a", "aaa", "baa", "caaaa", "xyz", "bb", "cab"]
    end

    it 'checks if merge_sort works on string list' do
      expect(@obj.sort(@a, "Merge Sort")==@a.sort).to eq(true)
    end

    it 'checks if quick_sort works on string list' do
      expect(@obj.sort(@a, "Quick Sort")==@a.sort).to eq(true)
    end

  end
