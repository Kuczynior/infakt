class CountElements
  def initialize(elements)
    @elements = elements
  end

  def perform
    elements_sum = {}
    @elements.each do |element|
      elements_sum[element] ||= 0
      elements_sum[element] = elements_sum[element] + 1
    end
    elements_sum
  end
end

