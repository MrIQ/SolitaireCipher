require_relative "../app/encryption"

describe Encryption do
  describe "#to_pre_treat_array" do
    it "should return the pretreated message without space and other characters" do
      message = "Code in Ruby, live longer!"
      encryption = Encryption.new
      res = [%w(C O D E I), %w(N R U B Y), %w(L I V E L), %w(O N G E R)]
      encryption.to_pre_treat_array(message).should == res
    end
  end

  describe "#to_pre_treat_array" do
    it "should return the number array of the message array" do
      encryption = Encryption.new
      str_array = [%w(C O D E I), %w(N R U B Y), %w(L I V E L), %w(O N G E R)]
      res = [[3, 15, 4, 5, 9], [14, 18, 21, 2, 25], [12, 9, 22, 5, 12], [15, 14, 7, 5, 18]]
      encryption.convert_into_numbers(str_array).should == res
    end
  end
end
