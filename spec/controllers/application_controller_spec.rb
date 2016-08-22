require "rails_helper"


RSpec.describe ApplicationController do
=begin
  describe "Sort Algorithms Check For Integer Lists" do

    before(:each) do
      @a = [5, 32, 5, -1, 43, 2, -1, 32, 5]
    end

    it 'checks if merge_sort works on integers list' do
      expect(@controller.mergesort(@a)==@a.sort).to eq(true)
    end

    it 'checks if quick_sort works on integers list' do
      expect(@controller.quicksort(@a)==@a.sort).to eq(true)
    end
  end

  describe "Sort Algorithms Check For String Lists" do

    before(:each) do
      @a = ["a", "aaa", "baa", "caaaa", "xyz", "bb", "cab"]
    end

    it 'checks if merge_sort works on string list' do
      expect(@controller.mergesort(@a)==@a.sort).to eq(true)
    end

    it 'checks if quick_sort works on string list' do
      expect(@controller.quicksort(@a)==@a.sort).to eq(true)
    end

  end
=end
end
