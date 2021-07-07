def louchebemize(sentence)
  # TODO: implement your louchebem translator
  new_word = []
  random_suffix = %w[em é ji oc ic uche ès].sample

  sentence.split.each do |word|
    split_word = word.gsub(/\W/, "").split(/([aeiou].*)/)
    spec_char = word.gsub(/[a-zA-Z]/, "")
    conversion = word.length == 1 ? word : "l#{split_word[-1]}#{split_word[0]}#{random_suffix}#{spec_char}"
    new_word << conversion
  end

  new_word.join(" ")
end
