#= require jquery
#= require jquery_ujs
#= require libs/jquery.retina
#= require libs/jquery.fancybox
#= require libs/jquery.easing
#= require libs/jquery.fancybox-media
#= require libs/equalize
#= require libs/selectivizr-min
#= require modernizr.min
#= require respond.min
#= require_self

if navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i)
  viewportmeta = document.querySelector('meta[name="viewport"]')
  if viewportmeta
    viewportmeta.content = 'width=device-width, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0';
    document.body.addEventListener('gesturestart', ( -> viewportmeta.content = 'width=device-width, minimum-scale=0.25, maximum-scale=1.6' ), false)

$ ->
  $(".fancybox-map").fancybox
    maxWidth    : 800
    maxHeight   : 600
    fitToView   : false
    width       : '70%'
    height      : '70%'
    autoSize    : false
    closeClick  : false
    openEffect  : 'elastic'
    closeEffect : 'none'
    title       : ''

  $('.fancybox-media').fancybox 
  	openEffect  : 'none'
  	closeEffect : 'none'
  	helpers : {
  		media : {}
  	}

  $('img.retina').retina()

  toggle_mobile_nav = (event, direction) ->
    event.stopPropagation()
    event.preventDefault()

    if $('#mobile-nav').hasClass('open')
      #close
      if direction == 'left'
        $('#mobile-nav').animate({'left': -260,'easing': 'easeOutBack'})
      else
        $('#mobile-nav').animate({'right': -260,'easing': 'easeOutBack'})
      $('#mobile-nav').removeClass('open')
    else
      #open up
      if direction == 'left'
        $('#mobile-nav').animate({'left': 0, 'easing': 'easeInBack'})
      else
        $('#mobile-nav').animate({'right': 0, 'easing': 'easeInBack'})
      $('#mobile-nav').addClass('open')

  $('.en #mobile-nav > .nav-button').click (event) =>
    toggle_mobile_nav(event, 'right')

  $('.ar #mobile-nav > .nav-button').click (event) =>
    toggle_mobile_nav(event, 'left')
