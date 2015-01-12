require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/list'

class ListTest < MiniTest::Unit::TestCase

  def setup
    @parser = List.new
  end

  def test_it_exists
    assert List.new
  end

  def test_it_can_parse_a_simple_list_initial_paragraph

    list = @parser.lrender('My favorite cuisines are:')
    assert_equal "<p>My favorite cuisines are:</p>", list
  end

  def test_it_can_parse_a_basic_one_item_list
    bullets = @parser.brender("*Sushi")
    assert_equal "<ul>\n<li>Sushi</li>\n</ul>", bullets
  end


  def test_it_can_parse_a_two_item_list
    skip
    bullet1 = @parser.brender("*Sushi")
    bullet2 = @parser.brender("*Barbeque")
    assert_equal "<li>Sushi</li>", bullet1
    assert_equal "<li>Barbeque</li>", bullet2

  end
end
