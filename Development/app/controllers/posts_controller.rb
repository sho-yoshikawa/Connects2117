class PostsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

def index
    @posts = Post.all.order(created_at: "desc")
    if params[:search] == nil
      @posts= Post.all.page(params[:page]).per(20).order(created_at: "desc")
    elsif params[:search] == ''
      @posts= Post.all.page(params[:page]).per(20).order(created_at: "desc")
    else
      @posts = Post.where("body LIKE ? ",'%' + params[:search] + '%').
      or(Post.where("title LIKE ? ", "%" + params[:search] + "%")).
      or(Post.where("sport LIKE ? ", "%" + params[:search] + "%")).
      or(Post.where("place LIKE ? ", "%" + params[:search] + "%")).
      or(Post.where("number LIKE ? ", "%" + params[:search] + "%")).
      or(Post.where("people LIKE ? ", "%" + params[:search] + "%")).
      or(Post.where("money LIKE ? ", "%" + params[:search] + "%")).
      or(Post.where("activeday LIKE ? ", "%" + params[:search] + "%"))
      .page(params[:page]).per(20).order(created_at: "desc")
      flash[:success] = "以下の投稿がヒットしました！"
    end
end

def index_en
  @posts = Post.all.order(created_at: "desc")
  if params[:search] == nil
    @posts= Post.all.page(params[:page]).per(20).order(created_at: "desc")
  elsif params[:search] == ''
    @posts= Post.all.page(params[:page]).per(20).order(created_at: "desc")
  else
    @posts = Post.where("body LIKE ? ",'%' + params[:search] + '%').
    or(Post.where("title LIKE ? ", "%" + params[:search] + "%")).
    or(Post.where("sport LIKE ? ", "%" + params[:search] + "%")).
    or(Post.where("place LIKE ? ", "%" + params[:search] + "%")).
    or(Post.where("number LIKE ? ", "%" + params[:search] + "%")).
    or(Post.where("people LIKE ? ", "%" + params[:search] + "%")).
    or(Post.where("money LIKE ? ", "%" + params[:search] + "%")).
    or(Post.where("activeday LIKE ? ", "%" + params[:search] + "%"))
    .page(params[:page]).per(20).order(created_at: "desc")
    flash[:success] = "以下の投稿がヒットしました！"
  end
end


def show
    @post = Post.find(params[:id])
    @comments = @post.comments.order(created_at: "desc")
    @likes_count = Like.where(post_id: @post.id).count
    @comment = Comment.new
    @like = Like.new
end

def show_en
  @post = Post.find(params[:id])
  @comments = @post.comments.order(created_at: "desc")
  @comment = Comment.new
  @likes_count = Like.where(post_id: @post.id).count
  @like = Like.new
end

def new
    @post = Post.new
end

def new_en
  @post = Post.new
end

def edit
    @post = Post.find(params[:id])
end

def edit_en
  @post = Post.find(params[:id])
end

def destroy
    @post = Post.find(params[:id]).destroy
    redirect_to action: :index
    flash.now[:success] = "投稿しました"
end

def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to :action => "show", :id => @post.id
    else
      redirect_to :action => "new"
    end
end


def create
  @post = Post.new(post_params)
  @post.user_id = current_user.id
  if @post.save
    redirect_to action: "index"
    flash.now[:alert] = "投稿しました"
  else
    redirect_to action: "new"
  end
end


  def home

    render layout:false

  end

  def home_en
    render layout:false
  end

  

  def question
   
  end

  def question_en
    
  end

  

  private
  def post_params
    params.require(:post).permit(:body,:image,:title,:sport,:place,:number,:people,:money,:activeday,:college,:drink,:activedays,:people2,:people3,:people4,:activemonday,:activetuesday,:activewednesday,:activethursday,:activefriday,:activesaturday,:activesunday)
  end


end
