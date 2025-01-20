DOCROOT := ../docs
IMGDIR := $(DOCROOT)/img
CSSDIR := $(DOCROOT)/css

# Build the website residing in docs/
.PHONY: build
build:
	# Build and install images
	mkdir -p $(IMGDIR)
	dot -Tpng shouldi.dot -o $(IMGDIR)/shouldi.png
	# Build and install CSS files
	mkdir -p $(CSSDIR)
	cp -a css/* $(CSSDIR)
	# Build and install HTML files
	cp index.html $(DOCROOT)
	mkdir -p $(DOCROOT)/should-i-try-magic-mushrooms
	cp should-i-try-magic-mushrooms/index.html \
	  $(DOCROOT)/should-i-try-magic-mushrooms
	mkdir -p $(DOCROOT)/psilocybin-mushroom-trip-checklist
	cp psilocybin-mushroom-trip-checklist/index.html \
	  $(DOCROOT)/psilocybin-mushroom-trip-checklist

LOCAL_PORT := 8080
LOCAL_URL := http://0.0.0.0:$(LOCAL_PORT)/

.PHONY: live
live:
	xdg-open $(LOCAL_URL)
	python3 -m http.server --directory ../docs $(LOCAL_PORT)
