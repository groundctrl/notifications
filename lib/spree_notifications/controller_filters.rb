module SpreeNotifications
  module ControllerFilters
    # This method will be called by before_action controller callback
    def self.before(controller)
      LoadNotifications.new(controller).perform
    end

    class LoadNotifications
      def initialize(controller)
        @controller = controller
      end

      def perform
        Notification.for(lookup_token).each do |notification|
          @controller.flash.now[notification.severity] = notification.message
          notification.destroy
        end
      end

      private

      def lookup_token
        @controller.spree_current_user ||
          @controller.send(:cookies).signed[:guest_token]
      end
    end
  end
end
