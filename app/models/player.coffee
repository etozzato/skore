`import DS from 'ember-data'`

Player = DS.Model.extend

  firstName:  DS.attr('string')
  lastName:   DS.attr('string')

  fullName: ( ->
    @get('firstName') + " "+ @get('lastName')
  ).property('firstName', 'lastName')


Player.reopenClass(
  FIXTURES: [
    { id:1 , firstName: 'Steve', lastName: 'August' },
    { id:2 , firstName: 'Emily', lastName: 'Eichelberger' },
    { id:3 , firstName: 'Jessie', lastName: 'Janego' },
    { id:4 , firstName: 'Josh', lastName: 'Paul' },
    { id:5 , firstName: 'Jim', lastName: 'Hornor' },
    { id:6 , firstName: 'Jonathan', lastName: 'So' },
    { id:7 , firstName: 'Kyle', lastName: 'Scherling' },
    { id:8 , firstName: 'Emanuele', lastName: 'Tozzato' },
    { id:9 , firstName: 'Michael', lastName: 'Derfler' },
    { id:10 , firstName: 'Sergii', lastName: 'Mertsalov' },
    { id:11 , firstName: 'Slack', lastName: 'Bot' },
    { id:12 , firstName: 'Sterling', lastName: 'Houghton' }
  ]
)

`export default Player`
