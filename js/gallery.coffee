gallery = ->
  $('.nav-toggle').click ->
    navToggler = $('.nav-toggle')
    navToggler.toggleClass('unfold-toggle')
    navMenu = $('.nav-full')
    navMenu.toggleClass('nav-active')
    console.log('Bang, bang he shot me down')
    return
  $('.icon-right-open').click ->
    currentImg = $('current-img')
    nextImg = currentImg.next()
    if nextImg.length == 0
      nextImg = $('.gal-img').first()
    currentImg.fadeOut(600).removeClass 'current-img'
    nextImg.fadeIn(600).addClass 'current-img'
    return
  $('.icon-left-open').click ->
    currentImg = $('current-img')
    prevImg = currentImg.prev()
    if prevImg.length == 0
      prevImg = $('.gal-img').last()
    currentImg.fadeOut(600).removeClass 'current-img'
    prevImg.fadeIn(600).addClass 'current-img'
    return
  return

$(document).ready gallery
