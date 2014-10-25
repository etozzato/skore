`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource 'game', ->
    @route 'new'
    @route 'show'
    @route 'edit', { path: '/game/:game_id' }

`export default Router`
