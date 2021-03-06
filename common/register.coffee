ReactionCore.registerPackage
  name: 'reaction-paypal'
  provides: ['paymentMethod']
  label: 'PayPal'
  description: 'Accept PayPal'
  icon: 'fa fa-shopping-cart'
  settingsRoute: 'paypal'
  defaultSettings:
    mode: false
    client_id: ""
    client_secret: ""
  priority: '2'
  hasWidget: false
  autoEnable: true
  shopPermissions: [
    {
      label: "Pay Pal"
      permission: "dashboard/payments"
      group: "Shop Settings"
    }
  ]