`import Ember from 'ember'`

ApplicationController = Ember.Controller.extend

  showMenu: false

  actions:
    toggleMenu: ->
      @toggleProperty('showMenu')
      return


`export default ApplicationController`
