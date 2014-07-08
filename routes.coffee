Router.map ->
  @route 'home',
    path: '/'

  @route 'dashboard',
    path: '/dashboard'

  @route 'transactions',
    path: '/transactions',
    template: 'Transactions'

  @route 'accounts',
    path: '/accounts',
    template: 'Accounts'

  @route 'Profile',
    path: '/profile/:id',
    template: 'Profile'

  @route 'Payments',
    path: '/payments'
    template: 'Payments'

  @route 'messages',
    path: '/messages',
    template: 'Messages'

  @route 'help',
    path: '/help',
    template: 'Help'

  @route 'settings',
    path: '/settings',
    template: 'Settings'

  @route 'notFound',
    path: '*'
    where: 'server'
    action: ->
      @response.statusCode = 404
      @response.end Handlebars.templates['404']()
