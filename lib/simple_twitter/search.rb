module SimpleTwitter
  class Search
    #puts("Now in: " +__FILE__)

    TWITTER_SEARCH = "http://search.twitter.com/search.json"
    attr_accessor (:results_per_page)
    def  initialize
      @per_page = 10
    end

    def search (query)
      params = {
        :q => query,
        :rpp => @results_per_page,
        #:lang => language,
      }
      response = HTTParty.get(TWITTER_SEARCH, :query => params)
      JSON.parse(response.body)
    end
  end
end
