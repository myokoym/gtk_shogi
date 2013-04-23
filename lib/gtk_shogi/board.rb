require 'gtk3'
require 'shogi'

module GtkShogi
  class Board < Gtk::Table
    attr_reader :table
    def initialize
      super(9, 9, true)
      @board = Shogi::Board.new
      0.upto(8) do |y|
        0.upto(8) do |x|
          shogi_x = 9 - x
          shogi_y = y + 1
          place = "#{shogi_x}#{shogi_y}"
          #koma = Gtk::Label.new(@board.at(place))
          #koma = Gtk::Frame.new(@board.at(place)).set_shadow_type(:in)
          koma = Gtk::Button.new(:label => @board.at(place))
          self.attach(koma, x, x + 1, y, y + 1)
        end
      end
    end
  end
end
