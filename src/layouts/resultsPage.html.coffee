###
layout: default
###

div '.master-container', ->
  div '.headline', -> h1 @document.headline + '!'
  div '.content-wrapper', ->
    main '.results-wrapper', 'ng-app': 'resultsDisplay', ->
      text @content
    text @partial('navigation')
