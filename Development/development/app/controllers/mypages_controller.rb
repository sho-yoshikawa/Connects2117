class MypagesController < ApplicationController
    def show
        @user = User.find(params[:id])
     end

     def show_en
      @user = User.find(params[:id])
   end
    
    def edit
        @user = User.find(params[:id])
    end

    def edit_en
      @user = User.find(params[:id])
  end

  def question
  end
  
  def question_en
  end


    def update
        @user = User.find(params[:id])
      if @user.update(mypage_params)
        redirect_to :action => "show", :id => @user.id
        flash[:success] = "正常に編集されました！！！"
      else
        redirect_to :action => "edit"
        flash[:success] = "編集できませんでした(´;ω;｀)"
      end
    end

    private

    def mypage_params
      params.require(:user).permit(:body,:name,:grade,:college,:email,:image,:day)
    end
end
