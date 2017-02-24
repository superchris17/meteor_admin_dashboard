Template.treeView.helpers
#  types: ->
#    Types.find {}, sort: order: 1
  typesOptions:
    sortField: 'order'
    group:
      name: 'treeView'
      pull: 'clone'
      put: true
    sort: true