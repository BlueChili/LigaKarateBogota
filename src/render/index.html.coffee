---
title: "Liga de Karate de Bogotá"
layout: "home"
---

images = ["/img/carousel/resultados-superate-2015.jpg", "/img/media/news/seminario_2015-01_small.jpg", "/img/carousel/riohacha-1.jpg", "/img/campeona-copy.jpg"]

div '.cs', ->
  img '.cs-logo', src: '/img/logo.png'
  div '.cs-itemWrapper', ->
    for image in images
      a '.cs-item', href: "#", ->
        span '.cs-item__imgWrapper', ->
          img '.cs-item__img', src: image
          div '.cs-item__imgFilter', ->
        span '.cs-item__info', ->
          h1 '.cs-item__title', 'Lorem ipsum'
          span '.cs-item__description', 'inconsolata Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis.'
  i '.icon-angle-left', ''
  i '.icon-angle-right', ''

ul '.cs-controls', ->
  li class:'cs-controlIcons icon-circle'
  li class:'cs-controlIcons icon-circle-thin'
  li class:'cs-controlIcons icon-circle-thin'
  li class:'cs-controlIcons icon-circle-thin'

nav '.hn', ->
  a '.hn-link', href: '/news', ->
    text 'Noticias'
    i class: 'hn-icons icon-newspaper'
  a '.hn-link', href:'/about.html', ->
    text 'La Liga'
    i class: 'hn-icons icon-doc-text'
  a '.hn-link', href: "/history.html", ->
    text "Historia"
    i class:'hn-icons icon-bank'
  a '.hn-link', href: "/results.html", ->
    text "Resultados Deportivos"
    i class:'hn-icons icon-award'
  a '.hn-link', href: "/media.html", ->
    text "Galerías"
    i class:'hn-icons icon-camera-alt'
  a '.hn-link', href: "/contact.html", ->
    text "Contácto"
    i class:'hn-icons icon-mail'
  a '.hn-link', href: "/clubs.html", ->
    text "Clubes Afiliados"
    i class:'hn-icons icon-sitemap'
  a '.hn-link', href: '/matriculas', ->
    text 'Matrículas'
    i class: 'hn-icons icon-edit'
  a '.hn-link', href: "https://www.facebook.com/ligakaratebogota?fref=ts", ->
    text 'Facebook'
    span class: 'hn-icons icon-facebook'
