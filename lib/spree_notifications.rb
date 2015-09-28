require 'spree_core'
require 'spree_notifications/engine'
require 'spree_notifications/controller_filters'

module SpreeNotifications
  def self.table_name_prefix
    'spree_notifications_'
  end

  def self.create(severity, message, options)
    SpreeNotifications::Notification.create!(
      options.merge(severity: severity.to_s, message: message)
    )
  end
end
