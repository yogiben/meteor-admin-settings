Template.registerHelper 'adminSettings', ->
  AdminSettings.find()

Template.registerHelper 'adminSetting', (options) ->
  name = undefined
  if typeof options == 'string'
    name = options
  else if options?.hash?.name
    name = options.hash.name
  AdminSettings.get name