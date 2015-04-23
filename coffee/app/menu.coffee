'use strict'

define [
  'classie'
  './helper/selector'
], (
  classie,
  $
) ->

  nav = $ '.nav'
  bar = $ '.bar'
  menu = $ '.menu'
  main = $ 'main'
  body = document.body || $ 'body'

  closeMenu = ->
    els = [body, bar, nav, menu]
    classie.remove el, 'open' for el in els
    return

  toggleMenu = ->
    els = [body, bar, nav, menu]
    classie.toggle el, 'open' for el in els
    return

  main.addEventListener 'click', closeMenu
  menu.addEventListener 'click', toggleMenu

  return
