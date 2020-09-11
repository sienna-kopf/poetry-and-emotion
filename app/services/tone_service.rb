class ToneService
  def search(poem_text)
    results = conn.get("/instances/ad0e8559-fba8-429a-b50e-d9a1dae2164e/v3/tone?version=2017-09-21&text=#{poem_text}")
    JSON.parse(results.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: "https://api.us-south.tone-analyzer.watson.cloud.ibm.com") do |connection|
      connection.basic_auth("apikey", ENV['TONE_API_KEY'])
    end
  end
end
