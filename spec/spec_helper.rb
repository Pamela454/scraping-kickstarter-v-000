require 'pry'

require_relative '../kickstarter_scraper'

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  # config here
end

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  # projects: kickstarter.css("li.project.grid_4")
  # projects: kickstarter.css("li.project.grid_4")
  # title: project.css("h2.bbcard_name strong a").text
  # image link: project.css("div.project-thumbnail a img").attribute("src").value
  kickstarter = Nokogiri::HTML(html)

  binding.pry
end
