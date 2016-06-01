require! 'react': {PropTypes}

unalias = (option) -> (c) ->
  lc-map =
    'cwm': 'componentWillMount'
    'cdm': 'componentDidMount'
    'cwrp': 'componentWillReceiveProps'
    'cwu': 'componentWillUpdate'
    'cdu': 'componentDidUpdate'
    'scu': 'shouldComponentUpdate'
    'cwum': 'componentWillUnmount'

  for k, v of option when k in Object.keys(lc-map)
    c::[lc-map[k]] = v

  ps-map =
    'ds': 'state'
    'dp': 'defaultProps'
    'pt': 'propTypes'

  if option.ds? => c::state = option.ds!
  if option.dp? => c.defaultProps = that
  if option.pt? => c.propTypes = that.call(PropTypes)

  c

module.exports = unalias
