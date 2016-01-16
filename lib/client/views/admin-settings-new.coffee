defaultSchema =
  name:
    type: String
  type:
    type: String
    autoform:
      options: _.map AdminSettingsTypes, (type, name) ->
        label: type.label or name.charAt(0).toUpperCase() + name.slice(1)
        value: name

Template.AdminSettingsNew.helpers
  schema: ->
    type = Session.get('adminSettingsNewType') or 'string'
    schema = _.extend {}, defaultSchema, value: AdminSettingsTypes[type].value
    new SimpleSchema schema

Template.AdminSettingsNew.events
  'change [data-schema-key="type"]': (e) ->
    Session.set 'adminSettingsNewType', e.target.value

AutoForm.hooks
  adminSettingsNew:
    onSuccess: ->
      Router.go 'adminSettings'