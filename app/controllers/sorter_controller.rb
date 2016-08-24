require Rails.root.to_s+'/lib/SortService.rb'

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

    integer_list_check = is_list_integer(params['list'])


    if(integer_list_check)
      @list = params["list"].split(",").map{|x| x = trim(x.to_f) }
    else
      @list = params["list"].split(",")
    end

    @sorting_algorithm = params[:sorting_algorithm]

    sort_service = SortService.new(@list, @sorting_algorithm)
    @sorted_list = sort_service.sort()
  end

end
