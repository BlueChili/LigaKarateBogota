---
title: "Liga de Karate de Bogotá"
layout: "home"
---
images = ["/img/carousel/resultados-superate-2015.jpg", "/img/media/news/seminario_2015-01_small.jpg", "/img/carousel/riohacha-1.jpg", "/img/campeona-copy.jpg"]

div '.cs', ->
  img '.cs-logo', src: '/img/logo.png'
  div '.cs-itemWrapper', ->
    for post in @getCollection('recentUpdates').toJSON().slice(0,3)
      a '.cs-item', href: post.url, ->
        span '.cs-item__imgWrapper', ->
          img '.cs-item__img', src: post.coverImage
          div '.cs-item__imgFilter', ->
        span '.cs-item__info', ->
          h1 '.cs-item__title', post.title
          span '.cs-item__description', post.cms.description

  i '.icon-angle-left', ''
  i '.icon-angle-right', ''

ul '.cs-controls', ->
  li class:'cs-controlIcons icon-circle'
  for post in @getCollection('recentUpdates').toJSON().slice(1,3)
    li class:'cs-controlIcons icon-circle-thin'

nav '.hn', ->
  a '.hn-link', href: '/news', ->
    span ->
      text 'Noticias'
      i class: 'hn-icons icon-newspaper'
  a '.hn-link', href:'/about.html', ->
    span ->
      text 'La Liga'
      i class: 'hn-icons icon-doc-text'
  a '.hn-link', href: "/history.html", ->
    span ->
      text "Historia"
      i class:'hn-icons icon-bank'
  a '.hn-link', href: "/media.html", ->
    span ->
      text "Galerías"
      i class:'hn-icons icon-camera-alt'
  a '.hn-link', href: "/results.html", ->
    span ->
      text "Resultados Deportivos"
      i class:'hn-icons icon-award'
  a '.hn-link', href: "/contact.html", ->
    span ->
      text "Contácto"
      i class:'hn-icons icon-mail'
  a '.hn-link', href: "/clubs.html", ->
    span ->
      text "Clubes Afiliados"
      i class:'hn-icons icon-sitemap'
  a '.hn-link', href: '/matriculas', ->
    span ->
      text 'Matrículas'
      i class: 'hn-icons icon-edit'
  a '.hn-link', href: "https://www.facebook.com/ligakaratebogota?fref=ts", ->
    span ->
      text 'Facebook'
      span class: 'hn-icons icon-facebook'

for post in @getCollection('recentUpdates').toJSON().slice(0,9)
  div class: 'as', ->
    a class: 'as-headLink', href: post.url, ->
      h1 '.as-headLine', post.title
    a class: 'as-headLink', href: post.url, ->
      img src: post.coverImage, class: 'as-coverImage'
    # p '.as-description', post.cms.description
    @marked post.content
