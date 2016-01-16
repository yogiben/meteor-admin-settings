@AdminSettings = new Meteor.Collection 'adminSettings'

AdminSettings.get = (name) ->
  setting = AdminSettings.findOne {name: name}
  setting?.value