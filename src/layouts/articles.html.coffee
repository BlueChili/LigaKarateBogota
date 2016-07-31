###
layout: 'default'
###

div '.master-container', ->
  div '.headline', ->
    h1 @document.title
  div '.content-wrapper', ->
    main '.results-wrapper', ->
      text @content
      for article in @getArticles()
        div style:'flex 1 0', ->
          h2 article.meta.title
    text @partial('nav-sidebar')
