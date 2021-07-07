def size_splitter(array, size)
  # TODO: Return an array of two arrays, the first containing
  #       words of length `size`, the second containing all the other words
  #       In (addition to this split, each array should be *sorted*.
  correct_length = []
  others = []

  array.each do |string|
    string.length == size ? correct_length << string : others << string
  end

  [correct_length.sort, others.sort]
end

def block_splitter(array)
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
  correct = []
  incorrect = []

  array.each { |element| yield(element) ? correct << element : incorrect << element }

  [correct, incorrect]
end
