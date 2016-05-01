require 'time'

class MyApp < Sinatra::Base
  def time_input
    _day, time, _time_zone = Time.now.to_s.split(' ')
    %Q(<input type='time' value='#{Time.now.to_s.delete(' ')}'>)
  end

  def date_input
    day, _time, _time_zone = Time.now.to_s.split(' ')
    %Q(<input type='date' value='#{day}'>)
  end

  get '/?' do
    slim :index
  end

  # todo: post 2 datetime
end
