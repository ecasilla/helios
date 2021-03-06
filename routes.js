// Generated by CoffeeScript 1.7.1
Router.map(function() {
  this.route('home', {
    path: '/'
  });
  this.route('dashboard', {
    path: '/dashboard'
  });
  this.route('transactions', {
    path: '/transactions',
    template: 'Transactions'
  });
  this.route('accounts', {
    path: '/accounts',
    template: 'Accounts'
  });
  this.route('profile/:id', {
    path: '/profile/:id',
    template: 'Profile'
  });
  this.route('payments', {
    path: '/payments',
    template: 'Payments'
  });
  this.route('premium', {
    path: '/premium',
    template: 'Premium'
  });
  this.route('atms', {
    path: '/atms',
    template: 'Atm'
  });
  this.route('messages', {
    path: '/messages',
    template: 'Messages'
  });
  this.route('help', {
    path: 'help',
    template: 'Help'
  });
  this.route('settings', {
    path: '/settings',
    template: 'Settings'
  });
  return this.route('notFound', {
    path: '*',
    where: 'server',
    action: function() {
      this.response.statusCode = 404;
      return this.response.end(Handlebars.templates['404']());
    }
  });
});
