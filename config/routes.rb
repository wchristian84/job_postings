Rails.application.routes.draw do
  get "/", to: redirect('/postings/index')
  get "/postings/index", to: "postings#index"
  get "/postings/remote", to: "postings#remote_jobs_list"

  namespace :jobs do
    get "/search", to: "search#search_jobs"
  end
end
