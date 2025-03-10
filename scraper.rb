require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter  => 'mysql2',
  :host     => '127.0.0.1',
  :username => 'mysql_user',
  :password => 'anotherrandompassword',
  :database => 'data'
)

class User < ActiveRecord::Base
end

user = User.where(id: 1)

printf "%s\n", user.inspect
