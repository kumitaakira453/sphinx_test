# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)


# Target to build HTML
html:
	@$(SPHINXBUILD) -b html "$(SOURCEDIR)" "$(BUILDDIR)/html" $(SPHINXOPTS)

# Serve Sphinx documentation with custom port
.PHONY: serve
serve:
	@$(SPHINXBUILD) -b html "$(SOURCEDIR)" "$(BUILDDIR)/html"
	@echo "Starting local server at http://localhost:$(PORT)..."
	@cd $(BUILDDIR)/html && python3 -m http.server $(PORT)



# Live-reload
.PHONY: livehtml
livehtml:
	@echo "Starting autobuild server at http://localhost:$(PORT)..."
	@sphinx-autobuild "$(SOURCEDIR)" "$(BUILDDIR)/html" --port $(PORT)

# Default port
PORT ?= 8000