class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        redirect_to posts_path
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find_by(id: params[:id])
        @post.update(post_params)
    end
end
