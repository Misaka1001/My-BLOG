const express = require('express');
const api = require('./api');
const router = express.Router();
router.get('/getMsgBoard', (req, res, next) => {
  api.getMsgBoard(req, res, next);
});
router.get('/getValue', (req, res, next) => {
  api.getValue(req, res, next);
});
router.get('/getMyInfo', (req, res, next) => {
  api.getMyInfo(req, res, next);
});
router.get('/getArticleMeta', (req, res, next) => {
  api.getArticleMeta(req, res, next);
});
router.get('/getRecommend', (req, res, next) => {
  api.getRecommend(req, res, next);
});
router.get('/getBangumi', (req, res, next) => {
  api.getBangumi(req, res, next);
});
router.post('/setValue', (req, res, next) => {
  api.setValue(req, res, next);
});
router.post('/leaveMessage', (req, res, next) => {
  api.leaveMessage(req, res, next);
});
module.exports = router;