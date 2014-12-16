Package.describe({
  name: 'yogiben:admin-settings',
  summary: 'Key value store for yogiben:admin',
  version: '1.0.0',
  git: 'https://github.com/yogiben/meteor-admin-settings'
});

Package.onUse(function(api) {
  var both = ['client', 'server'];
  api.versionsFrom('1.0.1');

  api.use([
    'coffeescript',
    'underscore',
    'templating',
    'tracker',
    'iron:router@1.0.3',
    'aldeed:autoform@4.2.1',
  ], both);

  api.addFiles([
  	'lib/client/views/admin-settings.html',
    'lib/client/views/admin-settings-table.html',
    'lib/client/views/admin-settings-edit.html',
    'lib/client/views/admin-settings-new.html',
    'lib/client/views/admin-settings-edit.coffee',
    'lib/client/views/admin-settings-new.coffee',
  	'lib/client/admin.coffee',
    'lib/client/tracker.coffee',
    'lib/client/helpers.coffee'
  ], 'client');

  api.addFiles([
    'lib/both/collections.coffee',
  	'lib/both/router.coffee',
    'lib/both/types.coffee'
  ], both);
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('yogiben:admin-settings');
  api.addFiles('yogiben:admin-settings-tests.js');
});
