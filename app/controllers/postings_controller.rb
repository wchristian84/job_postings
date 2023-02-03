class PostingsController < ApplicationController
    def index
        @postings = Posting.all
    end

    def remote_jobs_list
        @postings = Posting.remote_filter
    end
end