Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'users#top'
  get '/top_recruit' => 'users#top_recruit'
  get '/login' => 'users#login_form'
  get '/mypage' => 'posts#mypage'
  post '/login' => 'users#login'
end
