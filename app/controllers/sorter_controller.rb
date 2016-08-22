require 'SortService.rb'

class SorterController < ApplicationController

  def sort
  end

  def result

    flash = Hash.new
    flash[:no_sorting_algorithm] = "No sorting algorithm selected!" if(params[:sorting_algorithm]==nil )
    flash[:no_array] = "No input array given!" if(params[:list]==nil or params[:list].empty?)
    if !flash.empty?
      redirect_to '/', :flash => flash
      return
    end

    if(is_i params["list"].split(",")[0])
      @list = params["list"].split(",").map(&:to_i)
    else
      @list = params["list"].split(", ")
    end

    @sorting_algorithm = params[:sorting_algorithm]

    sort_service = SortService.new

    @sorted_list = sort_service.sort(@list, @sorting_algorithm)


  end

  
end
