Meteor.startup ->
	Router.route 'adminSettings',
		path: AdminDashboard.path('settings')
		layoutTemplate: 'AdminLayout'
		onAfterAction: ->
			Session.set 'admin_title', 'Settings'
			Session.set 'admin_subtitle', 'View'

	# TODO: investigate why '/settings/new' path is not working
	Router.route 'adminSettingsNew',
		path: AdminDashboard.path('settings/create')
		layoutTemplate: 'AdminLayout'
		onAfterAction: ->
			Session.set 'admin_title', 'Settings'
			Session.set 'admin_subtitle', 'New'

	Router.route 'adminSettingsEdit',
		path: AdminDashboard.path('settings/:_id'),
		layoutTemplate: 'AdminLayout'
		data: ->
			_id: @params._id
		onAfterAction: ->
			Session.set 'admin_title', 'Settings'
			Session.set 'admin_subtitle', 'Edit '