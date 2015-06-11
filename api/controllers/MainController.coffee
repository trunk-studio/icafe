MainController = {
  index: (req, res)->

    user = req.user

    res.view(user: user)

}

module.exports = MainController;
