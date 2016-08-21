require "rails_helper"


RSpec.describe ApplicationController do

  describe "Sort Algorithms Check For Integer Lists" do
    it 'checks if merge_sort works on integers list' do
      a = [5, 32, 5, -1, 43, 2, -1, 32, 5]
      expect(@controller.mergesort(a)==a.sort).to eq(true)
    end

    it 'checks if quick_sort works on integers list' do
      a = [5, 32, 5, -1, 43, 2, -1, 32, 5]
      expect(@controller.quicksort(a)==a.sort).to eq(true)
    end
  end


    describe "Sort Algorithms Check For String Lists" do
      it 'checks if merge_sort works on string list' do
        a = ["a", "aaa", "baa", "caaaa", "xyz", "bb", "cab"]
        expect(@controller.mergesort(a)==a.sort).to eq(true)
      end

      it 'checks if quick_sort works on string list' do
        a = ["a", "aaa", "baa", "caaaa", "xyz", "bb", "cab"]
        expect(@controller.quicksort(a)==a.sort).to eq(true)
      end
    end
end
