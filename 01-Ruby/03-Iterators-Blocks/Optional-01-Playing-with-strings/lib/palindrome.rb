def palindrome?(a_string)
  # TODO: check if a_string is a palindrome
  return false if a_string.empty?

  join_chars = a_string.downcase.delete("- ,!'")
  join_chars.reverse == join_chars
end
