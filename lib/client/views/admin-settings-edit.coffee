Template.adminSettingsEdit.helpers
	schema: ->
		doc = AdminSettings.findOne _id: @_id
		new SimpleSchema
			name:
				type: String
			type:
				type: String
			value: AdminSettingsTypes[doc.type].value
	doc: ->
		AdminSettings.findOne _id: @_id

AutoForm.hooks
	adminSettingsEdit:
		onSuccess: ->
			Router.go 'adminSettings'