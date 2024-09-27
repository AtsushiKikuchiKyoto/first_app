class PostsController < ApplicationController
  def index # indexアクションを定義
    @posts = Post.all #すべてのレコードをpostsに代入    
  end

  def new
  end

  def create
    Post.create(content: params[:ctt]) 
    #一つ目のcontent:はDBテーブルの列、二つ目の:contentはフォームに設定したキー
    redirect_to "/posts"    
  end
 
end
