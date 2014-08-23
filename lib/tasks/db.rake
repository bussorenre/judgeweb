namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    User.create!(:username => "bussorenre",
                 :email => "bussorenre0088@gmail.com",
                 :password => "hogepiyo",
                 :password_confirmation => "hogepiyo")
    99.times do |n|
      username  = "ve"+(SecureRandom.random_number*10000).floor.to_s
      email = "example-#{n+1}@de.is.ritsumei.ac.jp"
      password  = SecureRandom.hex[0..8]
      User.create!(:username => username,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
      print "#{username}, #{password} \n"
    end
  end
end