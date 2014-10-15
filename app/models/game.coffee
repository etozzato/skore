`import DS from 'ember-data'`

Game = DS.Model.extend
  started_at:  DS.attr('date')
  ended_at:    DS.attr('date')
  home_score:  DS.attr('number', { defaultValue: 0 })
  away_score:  DS.attr('number', { defaultValue: 0 })
  home_player: DS.belongsTo('player')
  away_player: DS.belongsTo('player')
  set_count:   DS.attr('number', { defaultValue: 1 })
  points:      DS.attr('number', { defaultValue: 11 })
  event_id:    DS.attr('number')
  note:        DS.attr('string')

`export default Game`
