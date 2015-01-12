require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/headers'

class HeadersTest < MiniTest::Unit::TestCase

  def setup
    @parser = Headers.new
  end

  def test_it_exists
    assert Headers.new
  end

  def test_it_can_parse_a_simple_header

    header = @parser.hrender('#A Simple Header')
    assert_equal "<h1>A Simple Header</h1>", header
  end

  def test_it_can_parse_a_different_header
    header = @parser.hrender('##Another Type of Header')
    assert_equal '<h2>Another Type of Header</h2>', header
  end
end
