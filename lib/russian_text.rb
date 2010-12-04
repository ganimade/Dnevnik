module RussianText
  def super_capitalize(a)
    a.split(" ").collect { |word| word.mb_chars.capitalize.to_s }.join(" ") unless a.nil?
  end
end
