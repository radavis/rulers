LOGFILE = "rulers.log"

module Rulers
  class Application
    def log(msg, file = LOGFILE)
      File.open(LOGFILE, "wb") do |file|
        file.print Time.now.getutc
        file.print " - "
        file.puts msg.to_s
      end
    end
  end
end
