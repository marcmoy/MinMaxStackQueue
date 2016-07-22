require_relative "mystack"

class StackQueue

  attr_reader :in, :out

  def initialize
    @in = MyStack.new
    @out = MyStack.new
  end

  def enqueue(el)
    @in.push(el)
  end

  def dequeue
    if @out.empty?
      until @in.empty
        @out.push(@in.pop)
      end
    end
    @out.pop
  end
end
