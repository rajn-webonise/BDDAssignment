class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def trim num
    i, f = num.to_i, num.to_f
    i == f ? i : f
  end

  def is_list_integer list_string
    list = list_string.split(',')
    integer_list_check = true
    list.each do |element|
      if (trim(element.to_f).to_s != element.strip)
        integer_list_check = false
        break
      end
    end
    return integer_list_check
  end

end
