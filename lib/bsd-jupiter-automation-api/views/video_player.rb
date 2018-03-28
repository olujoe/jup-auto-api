module BsdJupiterAutomationApi
  # Model for video player section within Jupiter
  class VideoPlayer
    attr_reader :screen, :video_player_lbl

    def initialize(screen)
      @screen = screen
      @video_player_lbl = 'video_player_section_label.png'
    end

    def view
      view_visible?(screen, [video_player_lbl])
    end
  end
end
