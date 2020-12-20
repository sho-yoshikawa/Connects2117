class CommentsController < ApplicationController
    before_action :authenticate_user!
  
    def create
      @post = Post.find(params[:post_id])   #find_byは使わないほうがいい？？
      @comment = @post.comments.build(comment_params)
      @comment.user_id = current_user.id
      #@comments = Comment.all
      if @comment.save
        #flash[:success] = "コメントしました"#
        redirect_back(fallback_location: root_path)
      else
        #flash[:success] = "コメントできませんでした"#
        redirect_back(fallback_location: root_path)
      end

    end

    def destroy
      @comment = Comment.find(params[:id])  #@commentに対しても定義をする  undified methodに効く
        @comment.destroy
        redirect_back(fallback_location:root_path)
    end
    
  
    private
  
      def comment_params
        params.require(:comment).permit(:comment)
      end
  end
  