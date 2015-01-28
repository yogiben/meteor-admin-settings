Meteor.publish 'adminSettings', ->
	AdminSettings.find()