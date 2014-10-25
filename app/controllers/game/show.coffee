`import Ember from 'ember'`

GameShowController = Ember.Controller.extend
  setLimit: 11

  p1Name: 'mek'
  p2Name: 'jso'

  p1Score: 0
  p2Score: 0

  
  p1Diff: (->
    @get('p1Score') - @get('p2Score')
  ).property('p1Score', 'p2Score')

  
  p2Diff: (->
    @get('p2Score') - @get('p1Score')
  ).property('p1Score', 'p2Score')


  p1LeadSm: Em.computed.gte('p1Diff', 1)
  p1LeadMd: Em.computed.gte('p1Diff', 3)
  p1LeadLg: Em.computed.gte('p1Diff', 5)
  p2LeadSm: Em.computed.gte('p2Diff', 1)
  p2LeadMd: Em.computed.gte('p2Diff', 3)
  p2LeadLg: Em.computed.gte('p2Diff', 5)

  #TBD
  #player states

  #On Fire
  #While last three points were score by same player

  #Game Point
  #If player score is >= setLimit - 1 and scoreDiff is > 0

  actions:
    addPlayer1Point: ->
      @addPoint('p1Score')

    subtractPlayer1Point: ->
      @subtractPoint('p1Score')

    addPlayer2Point: ->
      @addPoint('p2Score')

    subtractPlayer2Point: ->
      @subtractPoint('p2Score')


  addPoint: (playerScore) ->
    if @get(playerScore) < @get('setLimit')
      @set(playerScore, @get(playerScore) + 1)

  subtractPoint: (playerScore) ->
    if @get(playerScore) > 0
      @set(playerScore, @get(playerScore) - 1)


`export default GameShowController`


# game: [{
#   player: '@mek', score: '1', time: '00:10'
#   player: '@jso', score: '1', time: '00:15'
#   player: '@jso', score: '2', time: '00:24'
#   player: '@jso', score: '3', time: '00:45'
#   }]