`import Ember from 'ember'`

GameNewRoute = Ember.Route.extend

  setupController: (controller) ->
    controller.set('players', @store.find('player'))
    controller.set('game', @store.createRecord('game', {}))


`export default GameNewRoute`
