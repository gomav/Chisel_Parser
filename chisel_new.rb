class Chisel

  def rcarpet(word)
    wordarray = []
    wordarray << word
      if wordarray[0].to_s[0..1] == '##'
        output = wordarray.map do |x|
          x.to_s.gsub!(/^##/, '')
          x.insert(0, '<h2>')
          x.insert(-1, '</h2>')
        end
        return output.join
      elsif wordarray[0].to_s[0] == '#'
        output = wordarray.map do |x|
          x.to_s.gsub!(/^#/, '')
          x.insert(0, '<h1>')
          x.insert(-1, '</h1>')
        end
        return output.join
      else
        output = wordarray.map do |x|
          x.insert(0, '<p>')
          x.insert(-1, '</p>')
        end
        return output.join
      end

    end

end


# parser = Chisel.new
# output = parser.parse(document)
# puts output
