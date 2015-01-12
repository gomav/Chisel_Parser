class Paragraph

  def prender(phrase)
    phrase.gsub!(/\*\* /, "</strong> ")
    phrase.gsub!(/\*\*/, " <strong>")
    phrase.gsub!(/\ *\* /, "</em> ")
    phrase.gsub!(/\ *\* */, " <em>")
    "<p>#{phrase}</p>"
  end
end
