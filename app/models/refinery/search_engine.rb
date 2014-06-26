module Refinery
  class SearchEngine

    # Perform search over the specified models
    def self.search(query, page = 1)
      results = ActiveSupport::OrderedHash.new

      Refinery.searchable_models.each do |model|
        results[model] = model.sunspot_search(query)
      end if query.present?
    end

  end
end
