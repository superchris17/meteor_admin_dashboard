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
    waitOn: ->
      subs.subscribe 'components'