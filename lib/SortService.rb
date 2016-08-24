
class SortService
    def initialize(list, algorithm)
      @list = list
      @algorithm = algorithm
    end

    def mergesort(list)
      return list if list.size <= 1
      mid   = list.size / 2
      left  = list[0, mid]
      right = list[mid, list.size]
      merge(mergesort(left), mergesort(right))
    end

    def merge(left, right)
      sorted = []
      until left.empty? || right.empty?

        if left.first <= right.first
          sorted << left.shift
        else
          sorted << right.shift
        end
      end
      sorted.concat(left).concat(right)
    end

    def quicksort(list)
      clist = list.clone
      return qsort(clist)
    end

    def qsort(array)
      return array if array.length <= 1

      pivot_index = (array.length / 2).to_i
      pivot_value = array[pivot_index]
      array.delete_at(pivot_index)

      lesser = Array.new
      greater = Array.new

      array.each do |x|
        if x <= pivot_value
          lesser << x
        else
          greater << x
        end
      end

      return quicksort(lesser) + [pivot_value] + quicksort(greater)
    end

    def sort
      sorted_list = []
      if @algorithm=='Merge Sort'
        sorted_list = mergesort(@list)
      elsif @algorithm == 'Quick Sort'
        sorted_list = quicksort(@list)
      else
        return 'Invalid input'
      return sorted_list
    end

  end
end
