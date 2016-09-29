###
layout: 'default'
cms:
  title: 'hello template'
###

div '.master-container', ->
  h1 '.at-headline', -> @document.cms.title
  div '.at-wrapper', ->
    text @partial('navigation')
    main '.at-body', ->
      text @content
