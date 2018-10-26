class Stack
  attr_accessor :array
    def initialize
      # create ivar to store stack here!
      @array = []
    end

    def push(el)
      # adds an element to the stack
      @array << el
    end

    def pop
      # removes one element from the stack
      @array.pop
    end

    def peek
      @array.last
      # returns, but doesn't remove, the top element in the stack
    end
  end
stack = Stack.new
stack.push(3)
stack.push(4)
stack.push(5)
stack.pop
p stack.peek
