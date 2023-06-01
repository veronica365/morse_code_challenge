def decode_char(char)
  morse_code_table = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z', '*@*' => ' '
  }
  morse_code_table[char]
end

def decode_word(word)
  decoded_word = ''
  word.split.each { |code| decoded_word += decode_char(code) }
  decoded_word
end

def decode_sentence(string)
  new_string = string
  decoded_message = ''
  new_string.gsub! '   ', ' *@* '
  string_split = new_string.split
  string_split.each { |code| decoded_message += decode_char(code) }
  decoded_message
end

puts decode_char('.-')

puts decode_word('-- -.--')

puts decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
