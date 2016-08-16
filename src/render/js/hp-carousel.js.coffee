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
      activeCircle $(this)
      if isFF
        console.log isFF
        slides[i].scrollIntoView(false)
        return
      else
        carousel.scrollTo slides[i], 400
      return

  cleanCircles = () ->
    controls.map (index, c) ->
      if c.classList.contains 'icon-circle'
        c.classList.remove 'icon-circle'
        c.classList.add 'icon-circle-thin'

  activeCircle = (e) ->
    e.removeClass 'icon-circle-thin'
    e.addClass 'icon-circle'

  scrollNoti = ()->
    slides.map (i, el) ->
      if Math.abs el.getBoundingClientRect().left < 1
        cleanCircles()
        controls[i].classList.remove 'icon-circle-thin'
        controls[i].classList.add 'icon-circle'

  carousel.on 'scroll', _.debounce(scrollNoti, 50)

  return
