###
layout: 'default'
###

div '.master-container', ->
  h1 '.at-headline', -> @document.title
  div '.at-wrapper', ->
    text @partial('navigation')
    main '.at-body', ->
      if @document.coverImage then img src: @document.coverImage
      text @content
      div ".fb-like", "data-href": "https://www.facebook.com/ligakaratebogota/", "data-layout": "standard", "data-action": "like", "data-size": "small", "data-show-faces": "true", "data-share": "true", style: 'padding-top: 20px'
