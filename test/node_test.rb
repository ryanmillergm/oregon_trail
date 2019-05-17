require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'

class NodeTest < MiniTest::Test

  def setup
    @node = Node.new(surname = "Burke")
  end

  def test_node_exists
    assert_instance_of Node, @node
  end

  def test_node_surname
    assert_equal "Burke", @node.surname
  end

  def test_next_node
    assert_equal nil, @node.next_node
  end

end

  # > require "./lib/node"
  # > node = Node.new("Burke")
  # => <Node @surname="Burke" @next_node=nil #5678904567890>
  # > node.surname
  # => "Burke"
  # > node.next_node
  # => nil
