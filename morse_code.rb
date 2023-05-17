def decode_morse(morse)
    morse_code = {
        ".-"    => "A",
        "-..."  => "B",
        "-.-."  => "C",
        "-.."   => "D",
        "."     => "E",
        "..-."  => "F",
        "--."   => "G",
        "...."  => "H",
        ".."    => "I",
        ".---"  => "J",
        "-.-"   => "K",
        ".-.."  => "L",
        "--"    => "M",
        "-."    => "N",
        "---"   => "O",
        ".--."  => "P",
        "--.-"  => "Q",
        ".-."   => "R",
        "..."   => "S",
        "-"     => "T",
        "..-"   => "U",
        "...-"  => "V",
        ".--"   => "W",
        "-..-"  => "X",
        "-.--"  => "Y",
        "--.."  => "Z",
        ".----" => "1",
        "..---" => "2",
        "...--" => "3",
        "....-" => "4",
        "....." => "5",
        "-...." => "6",
        "--..." => "7",
        "---.." => "8",
        "----." => "9",
        "-----" => "0"
      }
  return morse_code[morse] if morse_code.key?(morse) 
end

morse_input = " .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
decoded_message = ""
morse_characters = morse_input.split(" ")
morse_characters.each do |morse_character|
  decoded_character = decode_morse(morse_character)
  decoded_message += decoded_character unless decoded_character.empty?
end

puts decoded_message