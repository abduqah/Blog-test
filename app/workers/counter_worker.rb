class CounterWorker
  require "redis"

  include Sidekiq::Worker
  def perform()
    redis = Redis.new
    redis.incr('counter')
  end
end