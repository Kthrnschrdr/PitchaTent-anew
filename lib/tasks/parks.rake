task :parks => :environment do
    Park.import_parks
end
