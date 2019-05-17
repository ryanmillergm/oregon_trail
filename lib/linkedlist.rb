class LinkedList
  attr_reader :head

  def initialize(head = nil)
    @head = head
  end

  def append(surname)
    node = Node.new(surname = surname)
    if @head
      find_tail.next = Node.new(surname)
    else
      @head = Node.new(surname)
    end
  end

  def find_tail
    node = @head
    return node if !node.next
    return node if !node.next while (node = node.next)
  end
  def append_after(target, value)
    node           = find(target)
    return unless node
    old_next       = node.next
    node.next      = Node.new(value)
    node.next.next = old_next
  end




end
