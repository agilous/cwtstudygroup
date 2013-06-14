def integer_value_of(string)
  result = /(\d+)/.match(string)
  return (result.nil? ? -1 : result[1].to_i)
end

def funny_sort(array)
  array.sort_by { |a| integer_value_of(a) }
end

def pretty_print(name, result)
  puts "#{name}\n  Before: #{result}\n  After: #{funny_sort(result)}\n"
end

example1 = ["qwerty123", "abc99", "no_numbers", "-100X500"]
example2 = ["June 2013", "13 Feb 2005", "1961/06/08", "b. 1971"]
example3 = ["Perl 6", "Ruby 1.9.3", "PHP 5.4.6", "jre-7u21-linux-x64.rpm"]

pretty_print("Example 1", example1)
pretty_print("Example 2", example2)
pretty_print("Example 3", example3)
