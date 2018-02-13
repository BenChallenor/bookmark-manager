require 'pg'

con = PG.connect(dbname: 'bookmark_manager_test')
con.exec("TRUNCATE links;")
con.exec("INSERT INTO links VALUES(1, 'http://www.makersacademy.com');")
con.exec("INSERT INTO links VALUES(2, 'http://www.google.com');")
con.exec("INSERT INTO links VALUES(3, 'http://www.facebook.com');")
