require 'minitest/autorun'
require 'minitest/pride'
require './lib/linkedlist'
require './lib/node'
require 'pry'

class LinkedListTest < MiniTest::Test

  def setup
    @list = LinkedList.new
  end

  def test_linked_list_exists
    assert_instance_of LinkedList, @list
  end

  def test_linked_list_head_is_nil
    assert_equal nil, @list.head
  end

  def test_list_appends
    expected = @list.append("West")

    assert_instance_of Node, expected
    assert_equal "West", expected.surname

  end

  def test_head_next_node_nil
    expected = @list.append("West")
    assert_equal nil, @list.head.next_node
  end

  def test_list_count
    expected = @list.append("West")
    # binding.pry
    assert_equal 1, @list.count
  end
end
#

# > list.append("West")
# => <Node @surname="West" @next_node=nil #5678904567890>
# > list
# => <LinkedList @head=<Node @surname="West" ... > #45678904567>
# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_string
# => "The West family"
