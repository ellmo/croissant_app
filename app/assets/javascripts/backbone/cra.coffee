#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.CRA =
  Models: {}
  Collections: {}
  Routers: {}
  Views:
    Home: {}

new Croissant.Terrain("wall", true)
new Croissant.Terrain("dirt", false)

$ ->
  new CRA.Initializer()
