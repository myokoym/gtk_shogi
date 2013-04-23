require "gtk_shogi/board"

class BoardTest < Test::Unit::TestCase
  def test_initialize
    @board = GtkShogi::Board.new
    w = Gtk::Window.new
    w.signal_connect("destroy") { Gtk.main_quit }
    w.add(@board)
    w.show_all
  end
end
