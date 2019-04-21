var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/imprint', function(req, res, next) {
    res.render('page/imprint', { title: 'Content Creator' });
});

router.get('/privacy', function(req, res, next) {
    res.render('page/privacy', { title: 'Content Creator' });
});

module.exports = router;
