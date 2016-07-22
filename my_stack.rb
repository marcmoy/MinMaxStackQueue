class MyStack

  attr_reader :store, :max, :min

  def initialize
    @store = []
  end

  def pop
    store.pop
  end

  def push(val)
    store << val
  end

  def peek
    store.last
  end

  def size
    store.size
  end

  def empty?
    store.empty?
  end
end
