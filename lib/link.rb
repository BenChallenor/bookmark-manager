require 'pg'

class Link
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
    con = PG.connect(dbname: 'bookmark_manager_test')
    else
    con = PG.connect(dbname: 'bookmark_manager')
    end
    table = con.exec("SELECT * FROM links")
    table.column_values(1)
  end
end
