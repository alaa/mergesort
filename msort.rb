class Mergesort
  attr_accessor :list

  def self.merge_sort list
    return list if list.size < 2
    left = list[0, list.length/2]
    right = list [list.length/2, list.length]

    merge(self.merge_sort(left), self.merge_sort(right))
  end

  def self.merge(left, right)
    sorted_list = []
    until left.empty? || right.empty?
      sorted_list << (left[0] <= right[0] ? left.shift : right.shift)
    end
    sorted_list.concat(left).concat(right)
    p sorted_list
  end
end

list = [4,6,8,2,3,1,0]
p list
p "----------------------"
Mergesort.merge_sort list
