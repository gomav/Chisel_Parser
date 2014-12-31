require 'minitest/autorun'
require 'minitest/pride'
require_relative 'chisel_new'

class ChiselTest < MiniTest::Unit::TestCase

  def setup
    @parser = Chisel.new
  end


  def test_it_exists
    assert Chisel.new
  end

  def test_it_parses_a_word

    word = @parser.rcarpet('hola')
    assert_equal word, '<p>hola</p>'
  end

  def test_it_parses_a_sentence

    sentence = @parser.rcarpet('this is some shit!')
    assert_equal sentence, '<p>this is some shit!</p>'
  end

  def test_it_parses_headers

    header = @parser.rcarpet('#this is some shit!')
    assert_equal header, '<h1>this is some shit!</h1>'
  end

  def test_it_parsers_smaller_header
    header = @parser.rcarpet('##this is different shit!')
    assert_equal header, '<h2>this is different shit!</h2>'
  end
end
