class MyQueue

  attr_reader :store

  def initialize
    @store = []
  end

  def enqueue(el)
    store << el
    el
  end

  def dequeue
    store.shift
  end

  def peek
    store.first
  end

  def size
    store.size
  end

  def empty?
    store.empty?
  end
end
