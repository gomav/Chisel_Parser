class List

  def lrender(list)
    list_header = "<p>" + "#{list}" + "</p>"
  end

  def brender(bullets)
    bullets_array = []
    bullets_array << bullets
    bullets[0].to_s[0..1] == '*'
    output = bullets_array.map do |x|
      x.to_s.gsub!(/^./, '')
      x.insert(0, "<ul>" + "\n<li>")
      x.insert(-1, "</li>" + "\n</ul>")
    end
    output.join
  end
end
