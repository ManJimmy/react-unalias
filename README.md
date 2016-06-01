# react-unalias

## Motive
It 's easier to read and write.

cdm --> componentDidMount

## Downside

## Alias Map
```
'cwm': 'componentWillMount'
'cdm': 'componentDidMount'
'cwrp': 'componentWillReceiveProps'
'cwu': 'componentWillUpdate'
'cdu': 'componentDidUpdate'
'scu': 'shouldComponentUpdate'
'cwum': 'componentWillUnmount'

'ds': 'state'
'dp': 'defaultProps'
'pt': 'propTypes'
```

`dp` as a normal js object

`ds`, `pt` as a function

`pt` 's `this` is binded as `React.PropTypes`

## Usage
```livescript
option =
  cdm: ->
    log 'component did mount'
  ds: ->

react-unalias(option) <|
class App extends React.Component
  render: ->    
```

```javascript
@reactUnalias({
  cdm(){
    log('component did mount')
  },
  ds(){
    return {hello: 'world'}
  }
})
class App extends React.Component{
  render(){

  }
}
```
