class Stack

  def initialize
    @stack = []
  end

  def push(value)
    @stack.push(value)
  end

  def pop
    @stack.pop
  end

  def shift
    @stack.shift
  end

  def peek
    @stack.last
  end

  def peek_first
    @stack.first
  end

  def size
    @stack.length
  end

  def show
    @stack
  end

  def search(value)
    if @stack.index(value).nil?
      -1
    else
      @stack.length - 1 - @stack.index(value)
    end
  end
end