#
set :output, "/path/to/my/cron_log.log"
#
every 4.hours do
  rake "weather:update_fields"
end
