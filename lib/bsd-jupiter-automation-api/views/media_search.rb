module BsdJupiterAutomationApi
  # Model for media search section within Jupiter
  class MediaSearch
    attr_reader :screen, :search_lbl, :search_field, :new_search_btn

    def initialize(screen)
      @screen = screen
      @search_lbl = 'media_search_lbl.png'
      @search_field = 'media_search_textfield.png'
      @new_search_btn = 'media_search_new_btn.png'
    end

    def view
      view_visible?(screen, [search_lbl, search_field])
    end
  end
end
