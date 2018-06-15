Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get '/ask'          => 'makeask#index'
    get '/ask/new'      => 'makeask#new'
                            # ask controller에 index 액션을 지정함.
    post '/ask/create'  => 'makeask#create'     


    get '/ask/:id/delete'   => 'makeask#delete'   # delete 액션을 추가해주면 됨.
    get '/ask/:id/edit'   => 'makeask#edit'     # 컴퓨터는 어떤 글을 수정하는지 모르기 때문에 :id 넣어주어야함.
    post '/ask/:id/update'  => 'makeask#update'
    
    get '/ask/:id/show'     => 'makeask#show'
end
