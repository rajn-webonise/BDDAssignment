class SorterController < ApplicationController

  def sort
  end

  def result

    if(is_i params["list"].split(",")[0])
      @list = params["list"].split(",").map(&:to_i)
    else
      @list = params["list"].split(", ")
    end

    @sorter = params['sorter']
    
    if @sorter == 'Merge Sort'
      @sorted_list = mergesort(@list)
    elsif @sorter == 'Quick Sort'
      @sorted_list = quicksort(@list)
    end

  end
end
