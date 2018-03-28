module BsdJupiterAutomationApi
  module Menus
  # model for favourites section within Jupiter
  class NewMenu
    attr_reader :screen, :new_menu_btn, :arrival_booking, :story_btn

    def initialize(screen)
      @screen = screen
      @new_menu_btn = 'new_menu_btn.png'
      @arrival_booking = 'new_menu_arrival_booking_item.png'
      @story_btn = 'new_menu_story_item.png'
    end

    def view
      view_visible?(screen, [new_menu_btn])
    end

    def open_menu
      screen.click(new_menu_btn)
    end

    def open_menu_item(menu_item)
      screen.click(new_menu_btn)
      sleep(1)
      screen.click(menu_item)
    end
  end
  end
end
