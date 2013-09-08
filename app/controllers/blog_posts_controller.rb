class BlogPostsController < ApplicationController
  def index
    set_page_title "Meducation Blog"
    @blog_posts = BlogPost.all
  end

  def show
    @blog_post = BlogPost.friendly.find(params[:id])
    set_page_title "Meducation Blog - #{@blog_post.title}"
  end
end
