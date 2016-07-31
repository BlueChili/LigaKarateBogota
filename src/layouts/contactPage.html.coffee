###
layout: 'default'
###

div '.contact-container', ->
  div '.headline', ->
    h1 @document.headline or 'Noticias de la LKB'
  div '.contact-body', ->
    text @partial('navigation')
    text @content
