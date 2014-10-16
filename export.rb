# Run from inside of a local Corrasable instance

File.open('./no-i.txt', 'w') { |file|
  file.write Word.where(word: /^[^i]+$/i).pluck(:word).map { |word|
    "There’s no “I” in #{word.capitalize}"
  }.join "\n"
}
