# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = "sphinx-test"
copyright = "2024, kumitaakira"
author = "kumitaakira"

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
    "sphinx_tabs.tabs",
    "sphinx_copybutton",
]
# ページ間でのtab状態のキープ
sphinx_tabs_valid_builders = ["html"]

templates_path = ["_templates"]
exclude_patterns = []

language = "ja"

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_static_path = ["_static"]


html_theme = "sphinx_rtd_theme"


html_favicon = "_static/favicon.jpeg"
