Meteor.startup ->
  AdminDashboard.addSidebarItem 'Settings',
    icon: 'gear'
    urls: [
      {title: 'New', url: AdminDashboard.path('/settings/create')}
      {title: 'View all', url: AdminDashboard.path('/settings')}
    ]