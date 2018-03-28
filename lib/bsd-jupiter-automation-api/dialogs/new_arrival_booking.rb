module BsdJupiterAutomationApi
  module Dialogs
    # model for favourites section within Jupiter
    class NewArrivalBooking
      attr_reader :screen, :dialog_lbl, :ok_btn, :cancel_btn, :story_field, :description_field, \
      :booking_error_alert



      def initialize(screen)
        @screen = screen
        @dialog_lbl = 'new_arrival_booking_dialog_label.png'
        @ok_btn = 'new_arrival_booking_ok_btn.png'
        @cancel_btn = 'new_arrival_booking_cancel_btn.png'
        @story_field = 'new_arrival_booking_story_field.png'
        @description_field = 'new_arrival_booking_description_field.png'
        @booking_error_alert = 'new_arrival_booking_error_alert.png'
      end

      def view
        view_visible?(screen, [new_menu_btn])
      end
    end
  end
end
