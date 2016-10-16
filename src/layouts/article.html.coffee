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
