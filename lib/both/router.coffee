Meteor.startup ->
	Router.route 'adminSettings',
		path: AdminDashboard.path('settings')
		controller: 'AdminController'
		onAfterAction: ->
			Session.set 'admin_title', 'Settings'
			Session.set 'admin_subtitle', 'View'
			Session.set 'admin_collection_name', 'AdminSettings'

	# TODO: investigate why '/settings/new' path is not working
	Router.route 'adminSettingsNew',
		path: AdminDashboard.path('settings/create')
		controller: 'AdminController'
		onAfterAction: ->
			Session.set 'admin_title', 'Settings'
			Session.set 'admin_subtitle', 'New'

	Router.route 'adminSettingsEdit',
		path: AdminDashboard.path('settings/:_id'),
		controller: 'AdminController'
		data: ->
			_id: @params._id
		onAfterAction: ->
			Session.set 'admin_title', 'Settings'
			Session.set 'admin_subtitle', 'Edit '