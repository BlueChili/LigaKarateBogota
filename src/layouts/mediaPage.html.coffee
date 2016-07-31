###
layout: 'default'
###
div '.master-container', ->
  div '.headline', ->
    h1 @document.headline
  div '.content-container', ->
    text @partial('navigation')
    div '.card-container', ->
      @content
