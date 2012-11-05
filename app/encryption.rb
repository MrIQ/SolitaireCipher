class Encryption

  def to_pre_treat_array(message)
    first_step_string = message.gsub(/[^a-zA-Z]/, "").upcase
    first_step_string.ljust(chars_need_to_pad(first_step_string), "X")
  end

  def convert_into_numbers(message_str)
    message_str.codepoints.collect {|c| c-65+1 }
  end

  def combine_number_arrays(first_array, second_array)
    [first_array, second_array].transpose.map {|x| x.reduce(:+)}.map { |x| x%26 }
  end

  private

  def chars_need_to_pad(first_step_string)
    first_step_string.length + (5 - first_step_string.length%(5))%5
  end


end