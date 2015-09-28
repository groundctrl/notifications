module Spree
  StoreController.class_eval do
    before_action SpreeNotifications::ControllerFilters
  end
end
