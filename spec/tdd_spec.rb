require "tdd"
require "rspec"


describe "Array" do
    subject(:array) {[1,2,1,3,3]}

    describe "#my_uniq" do
        it "should accept an array as argument" do
            expect{array.my_uniq}.not_to raise_error()
        end

        it "should remove duplicates from an array" do
            expect(array.my_uniq).to eq([1,2,3])
        end

        # it "tests stuff" do
        #     expect(true).to eq(false)
        # end
    end

    describe "#two_sum" do
        it "should accept an array as argument" do
            expect{array.two_sum}.not_to raise_error()
        end

        it "finds all pairs of positions where the elements at those positions sum to zero" do
            new_array = [-1, 0, 2, -2, 1]
            expect(new_array.two_sum).to eq([[0, 4], [2, 3]])
        end
    end
    
    describe "#my_transpose" do
        rows = [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
        ]
        it "should accept a 2d array as argument" do
            expect{rows.my_transpose}.not_to raise_error()
        end

        it "convert between the row-oriented and column-oriented representations of a matrix" do
            expect(rows.my_transpose).to eq([
                                            [0, 3, 6],
                                            [1, 4, 7],
                                            [2, 5, 8]
                                                      ])
        end
    end

end


describe "TowersOfHanoi" do

    subject(:towers) {TowersOfHanoi.new}

    it "should create a new instance with three empty arrays" do
        expect(towers.array1).to eq([])
    end

    describe "#populate" do
        it "should populate the towers" do
            towers.populate
            expect(towers.array1).to eq([3,2,1])
        end
    end

end