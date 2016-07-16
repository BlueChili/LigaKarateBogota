###
layout: 'default'
###
div '.master-container', ->
  div '.headline', ->
    h1 @document.headline
  div '.content-container', ->
    text @partial('nav-sidebar')
    div '.card-container', ->
      @content