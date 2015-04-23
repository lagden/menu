'use strict'

define [
  'templates/sample'
  './helper/selector'
  './menu'
], (
  template,
  $
) ->

  $info = $ '#info'
  $info.insertAdjacentHTML 'afterbegin', template
    name: navigator.appName
    version: navigator.appVersion

  return
