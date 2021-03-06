Template.paypal.helpers
  packageData: ->
    return ReactionCore.Collections.Packages.findOne({name:"reaction-paypal"})

AutoForm.hooks "paypal-update-form":
  onSuccess: (operation, result, template) ->
    Alerts.removeSeen()
    Alerts.add "Paypal settings saved.", "success"

  onError: (operation, error, template) ->
    Alerts.removeSeen()
    Alerts.add "Paypal settings update failed. " + error, "danger"
