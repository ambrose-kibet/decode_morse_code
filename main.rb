def decode_char(char)
  morse_code = {

    '.-' => 'A',

    '-...' => 'B',

    '-.-.' => 'C',

    '-..' => 'D',

    '.' => 'E',

    '..-.' => 'F',

    '--.' => 'G',

    '....' => 'H',

    '..' => 'I',

    '.---' => 'J',

    '-.-' => 'K',

    '.-..' => 'L',

    '--' => 'M', '

      -.' => 'N',

    '---' => 'O',

    '.--.' => 'P',

    '--.-' => 'Q',

    '.-.' => 'R',

    '...' => 'S',

    '-' => 'T',

    '..-' => 'U',

    '...-' => 'V',

    '.--' => 'W',

    '-..-' => 'X',

    '-.--' => 'Y',

    '--..' => 'Z',

    '-----' => '0',

    '.----' => '1',

    '..---' => '2',

    '...--' => '3',

    '....-' => '4',

    '.....' => '5',

    '-....' => '6',

    '--...' => '7',

    '---..' => '8',

    '----.' => '9',

    '  ' => ' '

  }

  morse_code[char]
end



puts decode_char('-...')



def decode_word(word)
  decoded_word = ''

  word.split.each { |item| decoded_word.concat decode_char(item) }

  puts decoded_word
end

decode_word('-- -.--')



def decode(sentence)
  sentence.split('  ').each { |word| decode_word(word) }
end

decode_char('.-')

decode_word('-- -.--')

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
