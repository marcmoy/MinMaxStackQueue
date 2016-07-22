require "byebug"
require_relative 'my_stack'

class MinMaxStack

  attr_reader :store

  def initialize
    @store = MyStack.new
  end

  def empty?
    store.empty?
  end

  def min
    peek[:min] unless empty?
  end

  def max
    # byebug
    peek[:max] unless empty?
  end

  def peek
    store.peek unless empty?
  end

  def pop
    store.pop[:value] unless empty?
  end

  def push(value)
    if empty?
      hash_obj = {:value => value, :min => value, :max => value}
    else
      h_min = min > value ? value : min
      h_max = max < value ? value : max

      hash_obj = {:value => value, :min => h_min, :max => h_max}
    end
    store.push(hash_obj)
  end

  def size
    store.size
  end

end
