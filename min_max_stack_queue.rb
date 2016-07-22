require_relative "min_max_stack"

class MinMaxStackQueue

  attr_reader :in, :out

  def initialize
    @in = MinMaxStack.new
    @out = MinMaxStack.new
  end

  def enqueue(value)
    @in.push(value)
  end

  def dequeue
    if @out.empty?
      until @in.empty?
        @out.push(@in.pop)
      end
    end
    @out.pop
  end

  def max
    if @out.empty?
      @in.max
    elsif @in.empty?
      @out.max
    else
      [@in.max, @out.max].max
    end
  end

  def min
    if @out.empty?
      @in.min
    elsif @in.empty?
      @out.min
    else
      [@in.min, @out.min].min
    end
  end
end
