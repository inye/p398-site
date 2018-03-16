results = public/index.html public/gallery.html public/story.html public/build.html \
					public/team.html public/styleguide.html \
					public/ru/index.html public/ru/gallery.html public/ru/story.html public/ru/build.html \
					public/ru/team.html public/ru/styleguide.html

all: $(results)

public/ru/%.html: ru/%.html ru/_header.html ru/_footer.html
	m4 $< > $@

public/%.html: %.html _header.html _footer.html
	m4 $< > $@

clean:
	rm $(results)
