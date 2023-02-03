module Jobs
    class SearchController < ApplicationController
        def search_jobs
            @postings = Posting.search(params[:query])
        end
    end
end