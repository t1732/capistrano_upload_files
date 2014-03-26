# -*- coding: utf-8 -*-
namespace :deploy do
  desc 'Upload a file that is specified in the FILES environment variable'
  task :upload_files do
    on roles(:app), in: :parallel do |host|
      if ENV['FILES'].nil?
        warn "Please specify at least one file or directory to update (via the FILES environment variable)"
      else
        files  = (ENV['FILES'] || "").split(",")
        _files = files.find_all{ |f| !File.file?(f) }
        if _files.empty?
          files.each do |file|
            dirname = File.dirname(file)
            if test "[ ! -d #{dirname} ]"
              execute "mkdir -p #{release_path}/#{dirname}"
            end
            upload!(file, "#{release_path}/#{file}")
          end
        else
          warn "#{_files} is not a file"
        end
      end
    end
  end
end
