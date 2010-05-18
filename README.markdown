Markshi
=======

Markdown Document Preview Tool

Helps when writing documents with the markdown
format, specially when used offline (i.e: text files,
not a Markdown-enabled wiki).

Provides syntax highlighting by using *CodeRay*.

*Markdown* files parsing and transformation is done by
*RDiscount*.

Requeriments
------------
- CodeRay
- RDiscount
- Linux or Mac OS X (or a custom **open** script to open html files)

Installation
------------

Fetch *markshi* from *github*:
    ~$ git clone git://github.com/dcestari/markshi.git

Compile the gem:
    ~markshi$ gem build markshi.gemspec

Install the gem:
    ~markshi$ gem install markshi-*.gem

Usage
-----

*Markshi* opens up a web browser with the generated *HTML* file

    ~$ markshi /path/to/some/File.markdown

