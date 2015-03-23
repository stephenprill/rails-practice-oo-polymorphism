class Taxer
  def initialize(price, category)
    @price, @category = price, category
  end
end

class Alabama < Taxer
  def tax
    0
  end
end

class Colorado < Taxer
  def tax
    @category == 'food' ? @price * 0.09 : @price * 0.07
  end
end

class NewYork < Taxer
  def tax
    @price * 0.07
  end
end

# ----------------------

[
  Alabama.new(10, 'toy'),
  Alabama.new(10, 'toy'),
  Colorado.new(10, 'food'),
  Colorado.new(10, 'toy'),
  NewYork.new(10, 'food'),
  NewYork.new(10, 'toy'),
].each do |pricer|
  puts pricer.tax
end
