require 'rubygems'
require 'sinatra'
require 'time'

#
# announcement
#
get '/announcements' do
  limit = 7 
  page = params["page"].to_i
  @announcements = Announcement.where("show = 1").order("id desc").order("time desc").limit(limit).offset(page*limit)
  erb :announcements
end

