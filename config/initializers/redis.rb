if Rails.env.production?
	$redis = Redis.new(:host => 'cf-my-first-ruby-app.herokuapp.com', :port => 8000)
else
	$redis = Redis.new(:host => 'localhost', :port => 6379)
end