class Api::V1::PostsController < Api::V1::ApiController
  before_action :require_user, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.page(params[:page]).per(params[:per])

    render json: {
      posts: @posts,
      post_count: Post.count,
      success: true
    }

  end

  def show
    render json: @post
  end

  def new

  end

  def create
    post = Post.new(post_params)

    if post.save
      render json: {
        status: :created,
        data: post
      }
    else
      render json: {
        status: 500,
        errors: post.errors.full_messages
      }
    end
  end

  def edit

  end

  def update
    if Post.update!(post_params)
      render json: {
        status: :updated
      }
    else
      render json: {
        status: 500,
        errors: @post.errors.full_messages
      }
    end
  end

  def destroy
    if Post.destroy(post_params)
      render json: {
        status: :deleted
      }
    else
      render json: {
        status: 500,
        errors: @post.errors.full_messages
      }
    end
  end

  def search
    @posts = Post.where(title: params[:query])

    if @posts.first
      render json: @posts
    else
      render json: {
        status: 500,
        errors: @posts.errors.full_messages
      }
    end
  end

  private

  def post_params
    params.permit(:title, :description, :body, :image)
  end

  def set_post
    @post = Post.find_by(slug: params[:id])
  end
end
