---
layout: 'default'
cms:
  title: 'Noticias'
  description: 'Noticias de la Liga de Karate de Bogotá'
title: 'Noticias'
siteArea: 'news'
---

div '.master-container', ->
  h1 '.nw-mainTitle', -> @document.title
  div '.nw-wrapper', ->
    text @partial('navigation')
    main ->
      for post in @getCollection('recentUpdates').toJSON().slice(0,9)
        div class: 'nw-article', ->
          a class: 'nw-article--headLink', href: post.url, ->
            h1 '.nw-article--headLine', post.title
          a class: 'nw-article--headLink', href: post.url, ->
            img src: post.coverImage, class: 'nw-article--coverImage'
          @marked post.content
