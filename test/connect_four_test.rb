gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'Connect_Four'
require_relative 'Board'

class ConnectFourTest < Minitest::Test
  
  def test_it_exists
    skip
    connect_four = ConnectFour.new
    assert_instance_of ConnectFour, ConnectFour.new
  end
end

