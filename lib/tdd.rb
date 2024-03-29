class Array

    def my_uniq
        new_array = []
        self.each do |ele|
            new_array << ele if !new_array.include?(ele)
        end
        new_array
    end

    def two_sum
        array = []
        self.each_with_index do |ele, idx|
            self.each_with_index do |ele_2, idx_2|
                array << [idx, idx_2] if ele + ele_2 == 0 && idx < idx_2
            end
        end
        array
    end

    def my_transpose
        new_array = Array.new(self.length) {Array.new(self.length)}

        self.each_with_index do |sub_arr, row|
            sub_arr.each_with_index do |ele, col|
                new_array[col][row] = ele
            end
        end

        new_array
    end


end

class TowersOfHanoi

    attr_reader :array1, :tower2, :tower3

    def initialize
        @array1 = []
        @tower2 = []
        @tower3 = []
    end

    def populate
        @array1 = [3,2,1]
    end


end