#Tweak the daemons code so that we can specify the logdir seperately from the piddir
module Daemons
  class Application
    def logdir
      logdir = options[:log_dir]
      unless logdir
        logdir = options[:dir_mode] == :system ? '/var/log' : pidfile_dir
      end
      logdir
    end

    def output_logfile
      (options[:log_output] && logdir) ? File.join(logdir, @group.app_name + '.output') : nil
    end

    def logfile
      logdir ? File.join(logdir, @group.app_name + '.log') : nil
    end
  end
end