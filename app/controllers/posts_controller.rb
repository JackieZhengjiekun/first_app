class PostsController < ApplicationController

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

      if @post.update_attributes(params[:post])
        redirect_to @post, notice: 'Post was successfully updated.' 
      else
        render action: "edit" 
      end 
  end
  
  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new
  end
  
  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])
    
      if @post.save
        redirect_to @post, notice: 'Post was successfully created.' 
      else
         render action: "new" 
      end    
  end
  
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    #@posts = Post.order('updated_at DESC') 
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    
    @post = Post.find(params[:id])
    @comment = Comment.new
    #@posts = Post.all(:include => :comments, :order => "created_at DESC")
    # @post = Post.order('id DESC') 
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.comments.each do |comment|
      comment.destroy
    end
    @post.destroy

    redirect_to posts_url     
  end
end
