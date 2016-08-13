---
title: "Liga de Karate de Bogotá"
layout: "home"
---

div '.cs', ->
  img '.cs-logo', src: '/img/logo.png'
  a '.cs-item', href: "/results.html", ->
    span '.cs-item__imgWrapper', ->
      img '.cs-item__img', src: "/img/campeona-copy.jpg"
      div '.cs-item__imgFilter', ->
    # span '.cs-item__info', ->
    #   h1 '.cs-item__title', 'Lorem ipsum'
    #   span '.cs-item__description', 'inconsolata Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis.'
  a '.cs-item', href: "/news/seminario-ttc.html", ->
    span '.cs-item__info', ->
      h1 '.cs-item__title', 'Lorem ipsum'
      span '.cs-item__description', 'inconsolata Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis.'
    span '.cs-item__imgWrapper', ->
      img '.cs-item__img', src: "/img/campeona-copy.jpg"
  a '.cs-item', href: "/results.html", ->
    span '.cs-item__info', ->
      h1 '.cs-item__title', 'Lorem ipsum'
      span '.cs-item__description', 'inconsolata Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis.'
    span '.cs-item__imgWrapper', ->
      img '.cs-item__img', src: "/img/campeona-copy.jpg"
  a '.cs-item', href: "#", ->
    span '.cs-item__info', ->
      h1 '.cs-item__title', 'Lorem ipsum'
      span '.cs-item__description', 'inconsolata Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis.'
    span '.cs-item__imgWrapper', ->
      img '.cs-item__img', src: "/img/campeona-copy.jpg"

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

#   section ".info", ->
#     h2 "Horarios"
#     time ->
#       strong "Lunes a viernes:"
#     time "7:30 a.m. - 12:30 m. y 4:30 p.m. - 7:30 p.m."
#     time ->
#       strong "b Sábados:"
#     time "9:30 a.m. - 1:30 p.m."
#     h2 "Requisitos de inscripción en la LKB:"
#     ul ->
#       li -> '2 Fotografías de 3x4'
#       li -> 'Certificado médico de aptitud física'
#       li -> 'Fotocopia de EPS o POS'
#       li -> 'Fotocopia del documento de identidad'
#       li -> 'Certificado de estudio o trabajo'
#       li -> 'Formulario de inscripción diligenciado (suministrado en la oficina de la LKB)'
#       li -> 'Valor de la matrícula $75.000 (<strong>incluye camiseta blanca con el logo de la liga'
#       li -> 'Pensión mensual $87.000'
#     
#     #  h2 Beneficios
#     #  p You insta get 10.000 cool points in life!
#     #  p Lorem ipsum Magna ut aute ex reprehenderit consectetur.
#     #  p Lorem ipsum In adipisicing proident non esse proident aliqua sit consequat mollit.
#     #  p Karate and moustaches are imba!
#     div '.ads', ->
#       div '.ad', ->
#         h2 -> 'Espacio para pauta 1'
#         img src:'/img/img-placeholder.jpg'
#         
#       div '.ad', ->
#         h2 -> 'Espacio para pauta 2'
#         img src:'/img/img-placeholder.jpg'    
#     
#   main ".news", ->
#     h2 "Noticias"
#     div ".single-item", ->
#       a href: "/results.html", ->
#         img src: "/img/carousel/resultados-superate-2015.jpg"
#       a href: "/news/seminario-ttc.html", ->
#         img src: "/img/media/news/seminario_2015-01_small.jpg"
#       a href: "/results.html", ->
#         img src: "/img/carousel/riohacha-1.jpg"
#       a href: "#", ->
#         img src: "img/campeona.jpg"
#       
#       #   a.feature(href:'//article-1.html')
#       #     h3 ¡Bogotá campeona!
#       #     .feature-by-line
#       #   .slide
#       #     .feature
#       #       h3 Nacionales Cali - Día 1
#       #    .arrows-container
#       #     .icon-left-open
#       #     .icon-right-open
#     
#     
