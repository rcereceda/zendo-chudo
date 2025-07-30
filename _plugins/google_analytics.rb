
module Jekyll
  class GoogleAnalyticsGenerator < Generator
    safe true
    priority :low

    def generate(site)
      # Set Google Analytics ID from environment
      site.config['google_analytics_id'] = ENV['GOOGLE_ANALYTICS_ID']
    end
  end
end
