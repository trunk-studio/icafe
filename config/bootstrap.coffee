###*
Bootstrap
(sails.config.bootstrap)

An asynchronous bootstrap function that runs before your Sails app gets lifted.
This gives you an opportunity to set up your data model, run jobs, or perform some special logic.

For more information on bootstrapping your app, check out:
http://sailsjs.org/#/documentation/reference/sails.config/sails.config.bootstrap.html
###
module.exports.bootstrap = (cb) ->
  sails.services.passport.loadStrategies();

  environment = sails.config.environment


  if environment is 'development'
    newBeanBlack =
      name: '黑珍珠'
      place: '哥斯大黎加 Costa Rica'
      breed: '卡杜拉 Caturra；卡杜艾 Catuai'
      manor: '查孔自家農場'
      method: '自然處理法;「黑珍珠」'
      roastDate: '2014年'
      roastType: '烘焙度'
      flavour: '風味'
      lat: 25.0339031
      lon: 121.5645099
      coverUrl: ''
      thumbCoverUrl: ''

    newBeanWhite =
      name: '白珍珠'
      place: '哥斯大黎加 Costa Rica'
      breed: '卡杜拉 Caturra；卡杜艾 Catuai'
      manor: '查孔自家農場'
      method: '自然處理法;「黑珍珠」'
      roastDate: '2014年'
      roastType: '烘焙度'
      flavour: '風味'
      lat: 25.0339031
      lon: 121.5645099
      coverUrl: ''
      thumbCoverUrl: ''

    Bean.create([newBeanBlack, newBeanWhite]).then((result) ->

      cb()

    )



  else
    cb()


  return
