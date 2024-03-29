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

end