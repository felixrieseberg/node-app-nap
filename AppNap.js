const addon = require('bindings')('AppNap.node')

module.exports = function (reason = '') {
  if (!reason || reason.length === 0 || typeof reason !== 'string') {
    throw new Error('Argument of type string expected')
  }

  return addon.disable(reason)
}
