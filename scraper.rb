require 'active_record'
require 'json'

ActiveRecord::Base.establish_connection(
  :adapter  => 'mysql2',
  :host     => '127.0.0.1',
  :username => 'mysql_user',
  :password => 'anotherrandompassword',
  :database => 'data'
)

class Users < ActiveRecord::Base
end

User = Struct.new(:id, :name, :createdAt)

def main()
  users = Array.new()
  usersData = Users.where(isActive: 1).ids

  usersData.each { 
    |id, _, name, _, _, createdAt|
    users.append(User.new(id, name, createdAt))
  }

  File.open("activeUsers.json", "w") { |f| f.puts users.to_json}
end

main()
