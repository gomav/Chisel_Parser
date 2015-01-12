require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/paragraph'

class ParagraphTest < MiniTest::Unit::TestCase

  def setup
    @parser = Paragraph.new
  end

  def test_it_exists
    assert Paragraph.new
  end

  def test_it_parses_a_word

    word = @parser.prender('que')
    assert_equal '<p>que</p>', word
  end

  def test_it_parses_a_sentence

    sentence = @parser.prender('This is interesting')
    assert_equal '<p>This is interesting</p>', sentence
  end

  def test_it_parses_a_full_paragraph

    paragraph = @parser.prender("You just *have* to try the cheesecake, he said. Ever since it appeared in" +
    "**Food & Wine** this place has been packed every night.")

    assert_equal "<p>You just <em>have</em> to try the cheesecake, he said. Ever since it appeared in" +
    " <strong>Food & Wine</strong> this place has been packed every night.</p>", paragraph
  end
end
