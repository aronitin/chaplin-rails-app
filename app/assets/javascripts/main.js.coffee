#= require handlebars
#= require_tree ./templates
# Bootstrap the application
require [
  'whodini_web_application',
  'routes'
], (WhodiniWebApplication, routes) ->
  'use strict'

  window.WhodiniWebApp = new WhodiniWebApplication {routes}



