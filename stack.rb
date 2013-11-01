class Stack
  attr_reader :elements

  def initialize
    @elements = []
  end

  def pop
    if empty
      nil
    else
      element = @elements.fetch 0
      @elements.delete_at 0
      element
    end
  end

  def push(element)
    @elements.insert(0, element)
  end

  def peek
    empty ? nil : @elements.fetch(0)
  end

  def size
    @elements.size
  end

  private

  def empty
    @elements.empty?
  end
end
