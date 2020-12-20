class ApplicationController < ActionController::Base
    def  show
        @user = User.find(params[:id])
     end
    

    def edit
        @user = User.where(user_id: current_user.id)
    end

    def update
        @user = User.where(user_id: current_user.id)
    end

    


    private

    def mypage_params
      params.require(:mypage).permit(:body)
    end
end

