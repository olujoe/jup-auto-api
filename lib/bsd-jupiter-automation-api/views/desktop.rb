require_relative '../helpers/step_helper'
module BsdJupiterAutomationApi
# Model for running host OS desktop
  class Desktop
    attr_reader :screen, :start_menu_icon, :jupiter_app_icon

    def initialize(screen)
      @screen = screen
      @start_menu_icon = 'start_menu.png'
      @jupiter_app_icon = 'jupiter_start_menu.png'
    end

    def start_jupiter
      screen.click 'start_menu.png'
      screen.type 'jupiter'
      screen.doubleClick(jupiter_app_icon)
    end
  end
end
