module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'd951a68820e3ce2cdc21cb8f43c6aaca'),
  },
});
