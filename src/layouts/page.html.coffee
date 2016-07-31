###
layout: 'default'
###

if (@document.headline)
  div '.headline', -> h1 @document.headline
div '.article-container', ->
  text @partial('navigation')
  article @content
