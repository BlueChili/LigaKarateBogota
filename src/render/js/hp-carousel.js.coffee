window.onload = () ->
  isFF = navigator.userAgent.toLowerCase().indexOf('firefox') > -1
  slides = $ '.cs-item'
  carousel = $ '.cs-itemWrapper'
  controls = $ '.cs-controlIcons'
  leftControl = $ '.icon-angle-left'
  rightControl = $ '.icon-angle-right'
  carouselScrollTicking = false
  lastKnownScroll = 0

  leftControl.on 'click', () ->
    clearInterval csAutoplay
    for el, i in slides
      if Math.abs(el.getBoundingClientRect().left) < 1
        target = i - 1
        if target < 0 then return moveToSlide slides[slides.length - 1]
        return moveToSlide slides[target]

  rightControl.on 'click', () ->
    clearInterval csAutoplay
    for el, i in slides
      if Math.abs(el.getBoundingClientRect().left) < 1
        target = i + 1
        if target is slides.length then return moveToSlide slides[0]
        return moveToSlide slides[target]

  controls.map (i, el) ->
    $(this).on 'click', ->
      clearInterval csAutoplay
      cleanCircles()
      moveToSlide(slides[i])

  moveToSlide = (el) ->
    if isFF
      el.scrollIntoView(behavior: 'smooth')
      return
    else
      carousel.scrollTo el, 400
    return

  cleanCircles = () ->
    for c in controls
      if c.classList.contains 'icon-circle'
        c.classList.remove 'icon-circle'
        c.classList.add 'icon-circle-thin'

  activeCircle = (el) ->
    cleanCircles()
    el.classList.remove 'icon-circle-thin'
    el.classList.add 'icon-circle'

  scrollNoti = ()->
    for el, index in slides
      if Math.abs el.getBoundingClientRect().left < 1
        cleanCircles()
        activeCircle controls[index]
    return

  carousel.on 'scroll', _.debounce(scrollNoti, 50)

  if CSS.supports("(-webkit-scroll-snap-type: mandatory) or (scroll-snap-type: mandatory)")
    if isFF
      $(window).bind "DOMMouseScroll mousewheel", (e) ->
        if e.type is "mousewheel" or "DOMMouseScroll"
          clearInterval csAutoplay
          scrollNoti()
        return
    $(".cs").bind "DOMMouseScroll mousewheel", (e) ->
      if e.type is "mousewheel" or "DOMMouseScroll"
        clearInterval csAutoplay
        scrollNoti()
      return

  csAutoplay = window.setInterval () ->
    for el, i in slides
      if Math.abs(el.getBoundingClientRect().left) < 1
        target = i + 1
        if target is slides.length then return moveToSlide slides[0]
        moveToSlide slides[target]
        break
  , 4000

  return
