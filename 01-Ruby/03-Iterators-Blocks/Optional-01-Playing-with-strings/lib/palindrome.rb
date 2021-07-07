def palindrome?(a_string)
  # TODO: check if a_string is a palindrome
  if a_string.empty?
    false
  else
    join_chars = a_string.downcase.gsub(/\W/, "").gsub(" ", "")
    join_chars.reverse == join_chars
  end
end
