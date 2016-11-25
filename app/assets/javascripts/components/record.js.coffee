@Record = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.record.title
      React.DOM.td null, @props.record.description
      React.DOM.td null, amountFormat(@props.record.price)