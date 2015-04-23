'use strict'

define [
  'classie'
], (classie) ->

  d = document;
  $ = (el) -> d.querySelector el

  nav = $ '.nav-container'
  appbar = $ '.app-bar'
  menuBtn = $ '.menu'
  main = $ 'main'
  body = d.body || $ 'body'

  closeMenu = ->
    els = [body, appbar, nav]
    classie.remove el, 'open' for el in els
    return

  toggleMenu = ->
    els = [body, appbar, nav]
    classie.toggle el, 'open' for el in els
    classie.add nav, 'opened'
    return

  main.addEventListener 'click', closeMenu
  menuBtn.addEventListener 'click', toggleMenu
  nav.addEventListener 'click', (event) ->
    if event.target.nodeName == 'A' or event.target.nodeName == 'LI'
      closeMenu()
    return

  return
