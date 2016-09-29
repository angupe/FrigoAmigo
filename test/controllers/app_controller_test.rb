require 'test_helper'

class AppControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get app_search_url
    assert_response :success
  end

end



RSpec.describe "Compare method checker" do

  it "receives a multiple of 3 and returns the right message" do
    expect(FizzBuzz.new.multiple(3)).to eq("Fizz")

  end

end


# RSpec.describe "String Calculator Test" do

#     let(:calculator) {StringCalculator.new}

#     it "zero digits" do
#         expect(calculator.add("")).to eq(0)
#     end

#     it "returns number if I receive string with one number" do
#         expect(calculator.add("2")).to eq(2)
#     end

#     it "returns number if I receive string with one number" do
#         expect(calculator.add("3")).to eq(3)
#     end

#     it "returns number if I receive string with two numbers" do
#         expect(calculator.add("1,2")).to eq(3)
#     end

# end
