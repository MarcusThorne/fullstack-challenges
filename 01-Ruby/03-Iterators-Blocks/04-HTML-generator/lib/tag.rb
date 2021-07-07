def tag(tag_name, attributes = nil)
  # TODO: Build HTML tags around content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
  unless attributes.nil?
    attr_name = attributes[0]
    attr_value = attributes[1]
  end

  attribute = "#{attr_name}=\"#{attr_value}\""

  "<#{tag_name}#{" #{attribute}" unless attributes.nil?}>#{yield}</#{tag_name}>"
end
