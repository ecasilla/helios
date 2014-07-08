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
    path: 'users/profile/:id'

  @route 'chat',
    path: '/chat',
    template: 'Chat'

  @route 'notFound',
    path: '*'
    where: 'server'
    action: ->
      @response.statusCode = 404
      @response.end Handlebars.templates['404']()
