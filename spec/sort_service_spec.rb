require "rails_helper"


RSpec.describe SortService do
  it 'checks if it creates a valid object when valid parameters are passed' do
    obj = SortService.new([], "Fake")
    expect(obj.nil?).to eq(false)
  end

  it 'checks if it creates a valid object when invalid parameters are passed' do
    obj = SortService.new([], 42)
    expect(obj.nil?).to eq(false)
  end
end

describe "Sort Algorithms Check For Integer Lists" do

  before(:each) do
    @a = [5, 32, 5, -1, 43, 2, -1, 32, 5]
  end

  it 'checks if merge_sort works on integers list' do
    @obj = SortService.new(@a, 'Merge Sort')
    expect(@obj.sort()==@a.sort).to eq(true)
  end

  it 'checks if quick_sort works on integers list' do
    @obj = SortService.new(@a, 'Quick Sort')
    expect(@obj.sort()==@a.sort).to eq(true)
  end
end

describe "Sort Algorithms Check For String Lists" do

  before(:each) do
    @a = ["a", "aaa", "baa", "caaaa", "xyz", "bb", "cab"]
  end

  it 'checks if merge_sort works on string list' do
    @obj = SortService.new(@a, 'Merge Sort')
    expect(@obj.sort()==@a.sort).to eq(true)
  end

  it 'checks if quick_sort works on string list' do
    @obj = SortService.new(@a, 'Quick Sort')
    expect(@obj.sort()==@a.sort).to eq(true)
  end

end

describe "Sort Algorithms Check For Intergers with Floats Lists" do

  before(:each) do
    @a = [32, 54.666, 0.001, 8, 99, 1]
  end

  it 'checks if merge_sort works on mixed list' do
    @obj = SortService.new(@a, 'Merge Sort')
    expect(@obj.sort()==@a.sort).to eq(true)
  end

end
