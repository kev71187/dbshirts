namespace :themes do

  desc "Create fake themes"
  task :fake_themes => :environment do
    theme_titles = [
      'dinosaur',
      'sloth',
      'party'
    ]
    
    theme_titles.each do |value|
      theme = Theme.new
      theme.title = value
      theme.published = true
      theme.description = "Come one come all! Get your #{value} t shirts! We almost died collecting this compilation. Raw Rawer RaWRERR"
      theme.save
      theme.viewed
    end
  end
end