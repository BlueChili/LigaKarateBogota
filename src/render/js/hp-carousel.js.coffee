window.onload = () ->
  isFF = navigator.userAgent.toLowerCase().indexOf('firefox') > -1
  slides = $ '.cs-item'
  carousel = $ '.cs-itemWrapper'
  controls = $ '.cs-controlIcons'
  carouselScrollTicking = false
  lastKnownScroll = 0


  controls.map (i, el) ->
    $(this).on 'click', ->
      cleanCircles()
      activeCircle el
      if isFF
        console.log isFF
        slides[i].scrollIntoView(false)
        return
      else
        carousel.scrollTo slides[i], 400
      return

  cleanCircles = () ->
    for c in controls
      if c.classList.contains 'icon-circle'
        c.classList.remove 'icon-circle'
        c.classList.add 'icon-circle-thin'

  activeCircle = (el) ->
    el.classList.remove 'icon-circle-thin'
    el.classList.add 'icon-circle'

  scrollNoti = ()->
    for el, index in slides
      if Math.abs el.getBoundingClientRect().left < 1
        cleanCircles()
        activeCircle controls[index]

  carousel.on 'scroll', _.debounce(scrollNoti, 50)

  return
