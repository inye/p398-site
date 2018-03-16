results = public/index.html public/gallery.html public/story.html public/build.html \
					public/team.html public/styleguide.html \
					public/ru/index.html public/ru/gallery.html public/ru/story.html public/ru/build.html \
					public/ru/team.html public/ru/styleguide.html

all: $(results)

public/%.html: %.html
	m4 $< > $@

clean:
	rm $(results)
