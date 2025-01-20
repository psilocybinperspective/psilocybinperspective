DOCROOT := ../docs
IMGDIR := $(DOCROOT)/img
CSSDIR := $(DOCROOT)/css

PAGES := \
  about \
  should-i-try-magic-mushrooms \
  psilocybin-mushroom-trip-checklist

# Build the website residing in docs/
.PHONY: build
build:
	# Build and install images
	mkdir -p $(IMGDIR)
	dot -Tpng should-i-try-magic-mushrooms/shouldi.dot \
	  -o $(IMGDIR)/shouldi.png
	# Build and install CSS files
	mkdir -p $(CSSDIR)
	cp -a css/* $(CSSDIR)
	# Build and install HTML files
	./inject index.html $(DOCROOT)/index.html
	for page in $(PAGES); do \
	  echo "build $$page"; \
	  mkdir -p $(DOCROOT)/$$page; \
	  ./inject $$page/index.html $(DOCROOT)/$$page/index.html; \
	done

LOCAL_PORT := 8080
LOCAL_URL := http://0.0.0.0:$(LOCAL_PORT)/

.PHONY: live
live:
	xdg-open $(LOCAL_URL)
	python3 -m http.server --directory ../docs $(LOCAL_PORT)
