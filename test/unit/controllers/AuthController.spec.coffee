describe "about Auth", (done) ->

  it "get login page", (done) ->

    request(sails.hooks.http.app)
    .post("/auth/login")

    .end (err, res) ->
      return done(body) if res.statusCode is 500
      res.statusCode.should.equal 200
      done(err)
