require_relative "../app/encryption"

describe Encryption do
  describe "#to_pre_treat_array" do
    it "should return the pretreated message without space and other characters" do
      message = "Code in Ruby, live longer!"
      encryption = Encryption.new
      res = "CODEINRUBYLIVELONGER"
      encryption.to_pre_treat_array(message).should == res
    end
  end

  describe "#to_pre_treat_array" do
    it "should return the number array of the message array" do
      encryption = Encryption.new
      message_str = "CODEINRUBYLIVELONGER"
      res = [3, 15, 4, 5, 9, 14, 18, 21, 2, 25, 12, 9, 22, 5, 12, 15, 14, 7, 5, 18]
      encryption.convert_into_numbers(message_str).should == res
    end
  end

  describe "#combine_number_arrays" do
    it "should add the corresponding members of two arrays" do
      encryption = Encryption.new
      first_array = [3, 15, 4, 5, 9, 14, 18, 21, 2, 25, 12, 9, 22, 5, 12, 15, 14, 7, 5, 18]
      second_array = [4, 23, 10, 24, 8, 25, 18, 6, 4, 7, 20, 13, 19, 8, 16, 21, 21, 18, 24, 10]
      result = [7, 12, 14, 3, 17, 13, 10, 1, 6, 6, 6, 22, 15, 13, 2, 10, 9, 25, 3, 2]
      encryption.combine_number_arrays(first_array,second_array).should == result
    end
  end
end
