def each_starts_with(array, string, &block)
  array.each do |element|
    block.call(element) unless /^#{string}/.match(element).nil?
  end
end

each_starts_with(["abcd", "axyz", "able", "xyzab", "qrst"], "ab") { |s| puts s }
