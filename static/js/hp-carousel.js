(function() {
  window.onload = function() {
    var activeCircle, carousel, carouselScrollTicking, cleanCircles, controls, csAutoplay, isFF, lastKnownScroll, leftControl, moveToSlide, rightControl, scrollNoti, slides;
    isFF = navigator.userAgent.toLowerCase().indexOf('firefox') > -1;
    slides = $('.cs-item');
    carousel = $('.cs-itemWrapper');
    controls = $('.cs-controlIcons');
    leftControl = $('.icon-angle-left');
    rightControl = $('.icon-angle-right');
    carouselScrollTicking = false;
    lastKnownScroll = 0;
    leftControl.on('click', function() {
      var el, i, j, len, target;
      clearInterval(csAutoplay);
      for (i = j = 0, len = slides.length; j < len; i = ++j) {
        el = slides[i];
        if (Math.abs(el.getBoundingClientRect().left) < 1) {
          target = i - 1;
          if (target < 0) {
            return moveToSlide(slides[slides.length - 1]);
          }
          return moveToSlide(slides[target]);
        }
      }
    });
    rightControl.on('click', function() {
      var el, i, j, len, target;
      clearInterval(csAutoplay);
      for (i = j = 0, len = slides.length; j < len; i = ++j) {
        el = slides[i];
        if (Math.abs(el.getBoundingClientRect().left) < 1) {
          target = i + 1;
          if (target === slides.length) {
            return moveToSlide(slides[0]);
          }
          return moveToSlide(slides[target]);
        }
      }
    });
    controls.map(function(i, el) {
      return $(this).on('click', function() {
        clearInterval(csAutoplay);
        cleanCircles();
        return moveToSlide(slides[i]);
      });
    });
    moveToSlide = function(el) {
      if (isFF) {
        el.scrollIntoView({
          behavior: 'smooth'
        });
        return;
      } else {
        carousel.scrollTo(el, 400);
      }
    };
    cleanCircles = function() {
      var c, j, len, results;
      results = [];
      for (j = 0, len = controls.length; j < len; j++) {
        c = controls[j];
        if (c.classList.contains('icon-circle')) {
          c.classList.remove('icon-circle');
          results.push(c.classList.add('icon-circle-thin'));
        } else {
          results.push(void 0);
        }
      }
      return results;
    };
    activeCircle = function(el) {
      cleanCircles();
      el.classList.remove('icon-circle-thin');
      return el.classList.add('icon-circle');
    };
    scrollNoti = function() {
      var el, index, j, len;
      for (index = j = 0, len = slides.length; j < len; index = ++j) {
        el = slides[index];
        if (Math.abs(el.getBoundingClientRect().left < 1)) {
          cleanCircles();
          activeCircle(controls[index]);
        }
      }
    };
    carousel.on('scroll', _.debounce(scrollNoti, 50));
    if (CSS.supports("(-webkit-scroll-snap-type: mandatory) or (scroll-snap-type: mandatory)")) {
      if (isFF) {
        $(window).bind("DOMMouseScroll mousewheel", function(e) {
          if (e.type === "mousewheel" || "DOMMouseScroll") {
            clearInterval(csAutoplay);
            scrollNoti();
          }
        });
      }
      $(".cs").bind("DOMMouseScroll mousewheel", function(e) {
        if (e.type === "mousewheel" || "DOMMouseScroll") {
          clearInterval(csAutoplay);
          scrollNoti();
        }
      });
    }
    csAutoplay = window.setInterval(function() {
      var el, i, j, len, target;
      for (i = j = 0, len = slides.length; j < len; i = ++j) {
        el = slides[i];
        if (Math.abs(el.getBoundingClientRect().left) < 1) {
          target = i + 1;
          if (target === slides.length) {
            return moveToSlide(slides[0]);
          }
          moveToSlide(slides[target]);
          break;
        }
      }
    }, 4000);
  };

}).call(this);
