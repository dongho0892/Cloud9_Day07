class MakeaskController < ApplicationController
    
    def index       # 모든 질문 목록을 보여주는 곳
        @makeasks = Makeask.all                         # 첫글자는 대문자.
    end
    
    def new             # 등록할 곳
#        p request.ip           # p request => 글 등록 할 경우에 여러 정보들이 console에 표시됨.
                    # .ip  ip만 특정 지어줌.
#         p request.location.region            
    end
    
    def create      # DB에 저장하는 골
        ask = Makeask.new
        ask.question = params[:question]
        ask.ip_address = request.ip             # ip를 등록 할 수 있도록
        ask.region = request.location.region
        ask.save
        redirect_to "/ask"   # index로 돌아가게끔 유도
    end
    
    def delete          # user 목록 볼 때, user의 id를 통해 가져온 것 처럼...
        ask = Makeask.find(params[:id])
        ask.destroy         # 찾아서 삭제한다..
        redirect_to "/ask"  
        # ask.save        
    end
    

    def edit
        @ask = Makeask.find(params[:id])
    end
    
    def update
        ask = Makeask.find(params[:id])
        ask.question = params[:question]
        ask.save
        redirect_to '/ask'
    end
    
    def show
        @ask = Makeask.find(params[:id])
    end
    
end
