namespace :refinery_search do

  desc "re-index all searchable objects"
  task :reindex => :environment do
    Refinery::SearchEngine.reindex
  end

end
