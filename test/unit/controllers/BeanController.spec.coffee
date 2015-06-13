describe.only "about Bean", (done) ->

  it "get Bean list", (done) ->

    request(sails.hooks.http.app)
    .post("/bean/")

    .end (err, res) ->

      res.statusCode.should.equal 200
      htmlBody = res.res.text
      (htmlBody.indexOf('黑珍珠') >= 0).should.equal true

      done(err)


  it "delete Bean", (done) ->

    Bean.find().then((beans) ->

      deleteBean = beans[0]

      request(sails.hooks.http.app)
      .delete("/bean/#{deleteBean.id}")
      .end (err, res) ->
        console.log "err", err

        res.statusCode.should.equal 200
        res.body.success.should.be.true

        Bean.findOne(deleteBean.id).then((deletedBean) ->
          (deletedBean is undefined).should.be.true
          done(err)

        )


    )
