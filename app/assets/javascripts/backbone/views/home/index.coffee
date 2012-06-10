class @CRA.Views.Home.Index extends Backbone.View

  initialize: () ->
    H.view = @ if H.debug
    @canvas = $('#cro')
    @stack = new Croissant.CanvasStack( @canvas, 32, ['background', 'grid', 'boundaries'] )
    @level = new Croissant.Level(48)
    @room_boundaries = Croissant.Generators.BSP.generate( @level, [7,7] )
    @stack.layers['boundaries'].draw_boundaries( @room_boundaries )
    @stack.layers['grid'].draw_grid("#ff00ff")
