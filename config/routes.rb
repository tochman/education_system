Rails.application.routes.draw do
  resource :courses, only: :show
end
