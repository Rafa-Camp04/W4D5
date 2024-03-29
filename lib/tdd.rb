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


end