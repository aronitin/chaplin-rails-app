define [
  'chaplin'
  'views/layout'
  # Require base controllers manually because
  # they aren’t compiled individually
  'controllers/hello_world_controller'
], (Chaplin, Layout) ->
  'use strict'

  # The application object
  # Choose a meaningful name for your application
  class WhodiniWebApplication extends Chaplin.Application

    # Set your application name here so the document title is set to
    # “Controller title – Site title” (see Layout#adjustTitle)
    title: 'Whodini Web Application'

    # Override standard layout initializer
    initLayout: (options = {}) ->
      options.title ?= @title
      @layout = new Layout options

    # Create additional mediator properties.
    initMediator: ->
      # Add additional application-specific properties and methods
      # e.g. Chaplin.mediator.prop = null
      Chaplin.mediator.user = null
      # Seal the mediator.
      super
