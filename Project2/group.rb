module Enumerable
  def each_group_by_first_letter(&block)
    results = Hash.new
    self.each do |word|
      results[word[0]] = (results[word[0]].nil? || results[word[0]].empty?) ? [word] : results[word[0]] << word
    end
    results.each do |letter, words|
      yield(letter, words.sort)
    end
  end
end

x = ["abcd", "axyz", "able", "xyzab", "qrst"]
x.each_group_by_first_letter do |letter, words|
  printf("%s: %s\n", letter, words.join(" "))
end
