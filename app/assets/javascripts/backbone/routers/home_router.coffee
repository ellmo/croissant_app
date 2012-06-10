class CRA.Routers.Home extends Backbone.Router

  initialize: ()->
    H.router = @ if H.debug
    if Backbone.history
      Backbone.history.start()
      H.log "started history"

  #====================
  #== NON-ROUTER EVENTS

  index_view: () ->
    @view ?= new CRA.Views.Home.Index({ el: $('#topmost') })

