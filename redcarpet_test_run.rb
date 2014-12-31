require 'redcarpet'

markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)

document = '#This is the first line of the paragraph.
##This is the second line of the same paragraph.

###This is the first line of the paragraph.

####This is the second line of the same paragraph.

This homework assignment is a bit weird.
Installing the gem makes life a bit easier, however, the same thing might
have been accomplished by using traditional ruby methods.

My *emphasized* and **stronged** text is awesome.

My favorite cuisines are:

* Sushi
* Barbeque
* Mexican'

puts markdown.render(document)
