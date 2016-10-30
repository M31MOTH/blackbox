#!/usr/bin/ruby
require 'typhoeus'
require 'json'
def html
	url = "https://api.github.com/repos/darkeyepy/blackbox/releases/latest"
	r = Typhoeus.get(url)
	html = r.body
	js = JSON.load(html)
	puts js['tag_name']
end
html()