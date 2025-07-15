require 'httparty'
require 'json'
require 'dotenv'

Dotenv.load

module Jekyll
  class NotionActivitiesGenerator < Generator
    safe true
    priority :normal

    def generate(site)
      activities = fetch_notion_activities
      site.data['notion_activities'] = activities
      
      if activities.any?
        puts "✅ Loaded #{activities.length} activities from Notion"
      else
        puts "⚠️ No activities found in Notion"
      end
    end

    private

    def notion_token
      @notion_token ||= ENV['NOTION_TOKEN']
    end
    
    def database_id
      @database_id ||= ENV['NOTION_DATABASE_ID']
    end

    def fetch_notion_activities
      return [] unless notion_token && database_id

      begin        
        response = query_notion_database(database_id, notion_token)
        
        if response.success?
          activities = parse_notion_response(response.parsed_response)
          puts "✅ Successfully fetched #{activities.length} activities from Notion"
          activities
        else
          puts "❌ Error fetching from Notion: #{response.code} - #{response.body}"
          []
        end
      rescue => e
        puts "❌ Error connecting to Notion API: #{e.message}"
        []
      end
    end

    def query_notion_database(database_id, notion_token)
      HTTParty.post(
        "https://api.notion.com/v1/databases/#{database_id}/query",
        headers: {
          'Authorization' => "Bearer #{notion_token}",
          'Notion-Version' => '2022-06-28',
          'Content-Type' => 'application/json'
        },
        body: {}.to_json
      )
    end

    def parse_notion_response(response)
      activities = []
      
      results = response['results'] || []
      results.each_with_index do |page, index|
        properties = page['properties']
        
        activity = {
          'order' => results.length - 1 - index,
          'title' => extract_text(properties['title']),
          'days' => extract_text(properties['days']),
          'time' => extract_text(properties['time']),
          'notes' => extract_text(properties['notes']),
          'emoji' => extract_text(properties['emoji']) || '📅'
        }
        
        activities << activity if !activity['title'].empty?
      end
      
      activities
    end

    def extract_text(property)
      return '' unless property
      
      case property['type']
      when 'title'
        property['title']&.first&.dig('plain_text') || ''
      when 'rich_text'
        property['rich_text']&.first&.dig('plain_text') || ''
      when 'select'
        property['select']&.dig('name') || ''
      else
        ''
      end
    end
  end
end
