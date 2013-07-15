define [
  'chaplin'
  'lib/utils'
], (Chaplin, utils) ->
  'use strict'
  # Application-specific Handlebars helpers
  # returns if a goal is complete or not
  Handlebars.registerHelper "getPath", (asset) ->
   return window.image_path(asset)
