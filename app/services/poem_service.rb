class PoemService
  def search(author)
    results = conn.get("/author/#{author}")
    JSON.parse(results.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: "https://poetrydb.org")
  end
end
