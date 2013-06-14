class Adder
  def initialize(x)
    @x = x
  end

  def method_missing(method, *args)
    case
    when result = /^plus(\d+)/.match(method)
      @x + result[1].to_i
    else
      super
    end
  end
end

x = Adder.new(10)
puts x.plus20
puts x.plus25
puts x.minus2
