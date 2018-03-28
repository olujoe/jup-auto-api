module BsdJupiterAutomationApi
  # model for favourites section within Jupiter
  class Favourites
    attr_reader :screen, :favourites_lbl, :home_btn

    def initialize(screen)
      @screen = screen
      @favourites_lbl = 'favourites_section_label.png'
      @home_btn = 'favourites_home_button.png'
    end

    def view
      view_visible?(screen, [favourites_lbl, home_btn])
    end
  end
end
