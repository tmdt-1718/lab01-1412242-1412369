class BlogsController < ApplicationController
  def index
    @blogs=Blog.all
  end
  def new
    @blog=Blog.new
  end
  def show
    @blog = Blog.find(params[:id])
    @blogs= Blog.limit(5)
  end

  def create
    blog= Blog.create(
      title:params[:blog][:title],
      content:params[:blog][:content],
      cover:"/cover/img#{Faker::Number.number(1)}.jpg",
      views:0,
      poster:Faker::Name.name
    )
    if blog.save
      redirect_to blog_path(blog)
    else
      redirect_to new_blog_path
    end

  end
  private
  def blog_params
    params.require(:blog).permit(:title,:content)
  end
end
