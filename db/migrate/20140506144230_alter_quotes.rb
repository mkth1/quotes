class AlterQuotes < ActiveRecord::Migration
  def up
    remove_column("quotes","quotes")
    add_column("quotes","text",:text )
    add_column("quotes","author",:string)
  end

  def down
    remove_column("quotes","text")
    remove_column("quotes","author")
    add_column("quotes","quotes")
  end
end
