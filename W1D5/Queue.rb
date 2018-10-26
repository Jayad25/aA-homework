class Queue
   attr_reader :queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue.last
  end
end

queue = Queue.new

queue.enqueue(3)
queue.enqueue(4)
queue.enqueue(7)
queue.enqueue(5)
p queue.dequeue
p queue.peek
