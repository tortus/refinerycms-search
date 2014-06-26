module Refinery
  class SearchEngine

    # Perform search over the specified models
    def self.search(query, page = 1)
      results = ActiveSupport::OrderedHash.new

      Refinery.searchable_models.each do |model|
        sunspot_results = model.sunspot_search(query)
        results[model] = sunspot_results if sunspot_results
      end if query.present?
    end

  end
end
