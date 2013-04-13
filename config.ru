require 'pp'
$LOAD_PATH << Dir::pwd

require './config.rb'

require './tables.rb'
require './signup.rb'
require './login.rb'
require './ranking.rb'
require './announcements.rb'

require './admin.rb'

require './scoreserver.rb'

run Sinatra::Application

