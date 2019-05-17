require 'minitest/autorun'
require 'minitest/pride'
require './lib/linkedlist'
require './lib/node'
require 'pry'

class LinkedListTest < MiniTest::Test

  def setup
    @list = LinkedList.new(head = nil)
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
    binding.pry
  end

  # def test_list_has_node
  #   assert_instance_of LinkedList
  # end

end
#
# > require "./lib/linked_list"
# > list = LinkedList.new
# => <LinkedList @head=nil #45678904567>
# > list.head
# => nil
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
