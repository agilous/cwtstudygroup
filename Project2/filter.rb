def filter(numbers, params, &block)
  numbers.each do |number|
    next if params[:min] && number < params[:min].to_i
    next if params[:max] && number > params[:max].to_i
    next if params[:odd] && number.even?
    next if params[:even] && number.odd?
    params[:scale] ? block.call(number * params[:scale].to_i) : block.call(number)
  end
end

nums = [6, -5, 319, 400, 18, 94, 11]
filter(nums, :min => 10, :max => 350, :odd => 1, :scale => 2) { |n| puts n }
