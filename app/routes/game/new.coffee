`import Ember from 'ember'`

GameNewRoute = Ember.Route.extend

  setupController: (controller) ->
    controller.set('players', @store.find('player'))
    controller.set('model', @store.find('player', 1))


`export default GameNewRoute`
