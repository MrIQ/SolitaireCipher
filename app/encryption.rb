class Encryption
  def initialize(message)
    @message = message
  end

  def to_pre_treat_array
    first_step_string = @message.gsub(/[^a-zA-Z]/, "").upcase
    first_step_string.ljust(chars_need_to_pad(first_step_string), "X").split(//).each_slice(5).inject([]) { |res, sub_array| res << sub_array }
  end

  def convert_into_numbers(code_array)
    code_array.inject([]) { |num_array,sub_array| num_array<<sub_array.join.codepoints.inject([]) {|code_num, c| code_num<<c-65+1 } }
  end

  private

  def chars_need_to_pad(first_step_string)
    first_step_string.length + (5 - first_step_string.length%(5))%5
  end


end