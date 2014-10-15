`import Ember from 'ember'`

GameNewController = Ember.Controller.extend
  actions:
    create: ->
      console.log "GameNewController:create"
      console.log "model?"
      console.log @get('model')

`export default GameNewController`
