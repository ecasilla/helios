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

  @route 'profile/:id',
    path: '/profile/:id',
    template: 'Profile'

  @route 'payments',
    path: '/payments'
    template: 'Payments'

   @route 'premium',
    path: '/premium'
    template: 'Premium'

  @route 'atms',
    path: '/atms'
    template: 'Atm'

  @route 'messages',
    path: '/messages',
    template: 'Messages'

  @route 'help',
    path: 'help',
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
