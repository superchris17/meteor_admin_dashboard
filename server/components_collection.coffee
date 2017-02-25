Meteor.startup () ->
  if Components.find().count() == 0
    [
      {
        category: 'Programming languages by programming paradigm'
        class: ''
      }
      {
        category: 'Prototype-based programming'
        class: 'span1'
      }
      {
        category: 'JavaScript'
        class: 'span2'
      }
      {
        category: 'CoffeeScript'
        class: 'span2'
      }
      {
        category: 'Lue'
        class: 'span2'
      }
      {
        category: 'Object-oriented programming'
        class: 'span1'
      }
      {
        category: 'Java'
        class: 'span2'
      }
      {
        category: 'C++'
        class: 'span2'
      }
      {
        category: 'C#'
        class: 'span2'
      }
      
    ].forEach (component, i) ->
      Components.insert
        category: component.category
        class: component.class
        order: i
      return
  return
