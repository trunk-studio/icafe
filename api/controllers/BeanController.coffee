BeanController = {
  index: (req, res)->


    Bean.find().then((beans) ->
      return res.view(beans: beans)
    )


  delete: (req, res)->

    deleteBeanId = req.params["id"]

    Bean.destroy(deleteBeanId).then((result)->

      return res.ok(success: true)

    ).fail((error)->

      return res.serverError(success: false)
    )

}

module.exports = BeanController;
