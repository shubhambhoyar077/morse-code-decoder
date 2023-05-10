morse_code = {
  'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.', 'G' => '--.',
  'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..', 'M' => '--', 'N' => '-.',
  'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-', 'U' => '..-',
  'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--', 'Z' => '--..'
}

$reverse_morse_code = morse_code.invert

def decode_character code
  $reverse_morse_code[code]
end

def decode_word word_code
  code_list = word_code.split
  word = code_list.map {|code| decode_character code}.join("")
end

def decode_msg msg_code
  word_code_list = msg_code.split(/   /)
  msg = word_code_list.map {|word_code| decode_word word_code}.join(" ")
end

puts decode_character "-.-"
puts decode_word "-- -.--"
puts decode_msg "-- -.--   -. .- -- ."
puts decode_msg ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."