doctype 5
html lang: 'es', ->
  head ->
    meta charset: 'utf-8'
    meta name: 'description', content:'Página oficial de la Liga de Karate Do de Bogotá'
    meta name:'keywords', content:'Karate,Karate Do,karate do,Liga,Oficial,Bogotá,Bogota,IDRD'
    meta name:'viewport', content:'width=device-width, initial-scale=1.0'
    link href:'http://fonts.googleapis.com/css?family=Lato:300,400|Raleway:300,400', rel:'stylesheet', type:'text/css'
    link type:'image/x-icon', href:'/img/favicon.ico', rel:'shorcut icon'
    title @document.title
    script src:'/js/vendor/jquery.js'
    script src:'/slick/slick.min.js'
    link rel:'stylesheet', href:'/css/main.css', type:'text/css'
    link rel:'stylesheet', href:'/slick/slick.css', type:'text/css'
    link rel:'stylesheet', href:'/slick/slick-theme.css', type:'text/css'

  body ->
    text @partial('header')
    text @content
    text @partial('links')
    script src:'/js/slick-init.js'
