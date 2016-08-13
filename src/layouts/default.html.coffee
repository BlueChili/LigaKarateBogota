doctype 5
html lang: 'es', ->
  head ->
    meta charset: 'utf-8'
    meta name: 'description', content: @getPreparedDescription(@document.cms?.description)
    meta name:'keywords', content:'Karate,Karate Do,karate do,Liga,Oficial,Bogotá,Bogota,IDRD'
    meta name:'viewport', content:'width=device-width, initial-scale=1.0'
    link href:'http://fonts.googleapis.com/css?family=Lato:300,400|Raleway:300,400', rel:'stylesheet', type:'text/css'
    link type:'image/x-icon', href:'/img/favicon.ico', rel:'shorcut icon'
    title @document.title
    meta property: 'og:url', content: 'http://ligakaratebogota.com' + @document.url
    meta property: 'og:title', content: @document.title
    meta property: 'og:type', content: @getOgType(@document.layout)
    meta property: 'og:locale', content: 'es_CO'
    meta property: 'og:description', content: @getPreparedDescription(@document.cms?.description?)
    link rel: 'stylesheet', href:'/css/fontello.css'
    script src:'/js/vendor/jquery.js'
    script src:'/js/hp-carousel.js'
    if @getHeadScripts(@document.layout)?
      for url in @getHeadScripts(@document.layout)
        script src: url
    link rel:'stylesheet', href:'/css/main.css', type:'text/css'
    for styles in @getCustomStyles(@document.layout)
      link rel:'stylesheet', href: styles, type:'text/css'
    link rel:'stylesheet', href: 'css/homepage.css'
    link rel:'stylesheet', href: 'css/hp-navigation.css'


  body ->
    unless @document.layout is 'home' then text @partial('header')
    text @content
    text @partial('links')
    text @getBlock('scripts').toHTML()
