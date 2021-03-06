Sails = require('sails')
sails = undefined

global.request = require("supertest")
global.should = require("chai").should()

before (done) ->
  Sails.lift { port: 1338 }, (err, server) ->
    sails = server
    if err
      return done(err)
    # here you can load fixtures, etc.
    done err, sails
    return
  return
after (done) ->
  # here you can clear fixtures, etc.
  sails.lower done
  return

# ---
# generated by js2coffee 2.0.3
