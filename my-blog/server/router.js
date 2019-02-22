const express = require('express');
const api = require('./api');
const router = express.Router();

router.get('/getValue', (req, res, next) => {
  api.getValue(req, res, next);
});
router.get('/getMyInfo', (req, res, next) => {
  api.getMyInfo(req, res, next);
});
router.get('/getArticleMeta', (req, res, next) => {
  api.getArticleMeta(req, res, next);
});
router.post('/setValue', (req, res, next) => {
  api.setValue(req, res, next);
});

module.exports = router;