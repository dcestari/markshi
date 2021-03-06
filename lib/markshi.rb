#!/usr/bin/env ruby

require 'rubygems'
require 'rdiscount'
require 'coderay'
require 'erb'

module Markshi
  def markdownize(text)
    rd = RDiscount.new(text, :smart, :generate_toc)
    [rd.toc_content, rd.to_html]
  end

  def highlight_code(text)
    text.gsub(/<pre><code>(\[(\w+)\])?\n([^<]+)<\/code><\/pre>/m) do
      CodeRay.scan($3, $2).div(:css => :class).gsub('&amp;', '&')
    end
  end

  def decorate_boxes(text)
    boxes = %w[note quote caution tip]
    boxes = boxes.join '|'
    text.gsub(/<blockquote><p><strong>(#{boxes})<\/strong>/mi) do
      "<blockquote class=\"#{$1}\"><p>".downcase
    end
  end

  def layout(title, toc, text, template = 'default')
    templates_dir = File.expand_path('../../templates', __FILE__)
    template = ERB.new(File.read("#{templates_dir}/#{template}.erb.html"))
    template.result(binding)
  end
end

