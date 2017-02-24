Router.map ->
  @route "home",
    path: "/"
    layoutTemplate: "homeLayout"

  @route "dashboard",
    path: "/dashboard"
    waitOn: ->
      [
        subs.subscribe 'posts'
        subs.subscribe 'comments'
        subs.subscribe 'attachments'
      ]
    data: ->
      posts: Posts.find({},{sort: {createdAt: -1}}).fetch()
  @route "ckeditor",
    path: AdminDashboard.path('/editors/ckeditor')
    controller: 'AdminController'
    onAfterAction: ->
      Session.set 'admin_title', 'CKEditor'
      Session.set 'admin_subtitle', 'CKEditor'
  @route "treeView",
    path: AdminDashboard.path('/components/treeview')
    controller: 'AdminController'
    onAfterAction: ->
      Session.set 'admin_title', 'treeView'
      Session.set 'admin_subtitle', 'treeView'
    data: ->
      types: [
        {
          name: 'String'
          icon: '<span class="glyphicon glyphicon-tag" aria-hidden="true"></span>'
        }
        {
          name: 'Text, multi-line'
          icon: '<i class="mdi-communication-message" aria-hidden="true"></i>'
        }
        {
          name: 'Category'
          icon: '<span class="glyphicon glyphicon-list" aria-hidden="true"></span>'
        }
        {
          name: 'Number'
          icon: '<i class="mdi-image-looks-one" aria-hidden="true"></i>'
        }
        {
          name: 'Date'
          icon: '<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>'
        }
        {
          name: 'Hyperlink'
          icon: '<span class="glyphicon glyphicon-link" aria-hidden="true"></span>'
        }
        {
          name: 'Image'
          icon: '<span class="glyphicon glyphicon-picture" aria-hidden="true"></span>'
        }
        {
          name: 'Progress'
          icon: '<span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>'
        }
        {
          name: 'Duration'
          icon: '<span class="glyphicon glyphicon-time" aria-hidden="true"></span>'
        }
        {
          name: 'Map address'
          icon: '<i class="mdi-maps-place" aria-hidden="true"></i>'
        }
        {
          name: 'Relationship'
          icon: '<span class="glyphicon glyphicon-flash" aria-hidden="true"></span>'
        }
      ]