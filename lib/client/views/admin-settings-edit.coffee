Template.adminSettingsEdit.helpers
	schema: ->
		new SimpleSchema
			name:
				type: String
			type:
				type: String
			value:
				type: String
	doc: ->
		AdminSettings.findOne _id: @_id

AutoForm.hooks
	adminSettingsEdit:
		after:
			update: ->
				Router.go 'adminSettings'