`import Ember from 'ember'`

GameNewController = Ember.Controller.extend
  setCount: [{id: 1, label: 'One'}, {id: 3, label: 'Two out of Three'}, {id: 5, label: 'Three out of Five'}]
  points:   [{id: 11, label: 'Eleven'}, {id: 21, label: 'Twenty-one'}]

  actions:
    create: ->
      console.log "GameNewController:create"
      console.log @get('game').save()

`export default GameNewController`
