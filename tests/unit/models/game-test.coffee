`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'game', 'Game', {
  # Specify the other units that are required for this test.
  needs: ['model:player']
}

test 'it exists', ->
  model = @subject()
  # store = @store()
  ok !!model
