###
layout: 'default'
cms:
  title: 'hello template'
###

div '.master-container', ->
  h1 '.at-headline', -> @document.cms.title
  div '.content-wrapper', ->
    text @partial('nav-sidebar')
    main '.at-body', ->
      text @content