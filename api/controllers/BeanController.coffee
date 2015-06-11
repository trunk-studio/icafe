BeanController = {
  index: (req, res)->


    Bean.find().then((beans) ->
      res.view(beans: beans)
    )




}

module.exports = BeanController;
