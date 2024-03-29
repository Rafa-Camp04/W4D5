require "tdd"
require "rspec"


# describe "Array"
    describe "#my_uniq" do
        it "should accept an array as argument" do
            expect{[1, 2, 1, 3, 3].uniq}.not_to raise_error()
        end




    end
# end