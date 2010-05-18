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

### Debian-based Linux Distributions
- rubygems1.8 (1.9 not tested)
- ruby-dev

Installation
------------

### Debian-based Linux Distributions
    ~$ sudo aptitude install rubygems1.8 ruby-dev

### General

Fetch *markshi* from *github*:
    ~$ git clone git://github.com/dcestari/markshi.git

Compile the gem:
    ~markshi$ gem build markshi.gemspec

Install the gem (you might want to use *sudo* here):
    ~markshi$ gem install markshi-*.gem

### Final Steps

Now *check your path* to see if the gems bin directory is included,
otherwise include it on your *bashrc*.
    ~$ echo 'export PATH=$HOME/.gem/ruby/1.8/bin:$PATH' >> .bashrc

Usage
-----

*Markshi* opens up a web browser with the generated *HTML* file

    ~$ markshi /path/to/some/File.markdown

