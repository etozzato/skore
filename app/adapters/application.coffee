`import DS from 'ember-data'`

# ApplicationAdapter = DS.RESTAdapter.extend
#   namespace: 'api/v1',
#   host: 'http://localhost:3000'

ApplicationAdapter = DS.FixtureAdapter.extend()

`export default ApplicationAdapter`
