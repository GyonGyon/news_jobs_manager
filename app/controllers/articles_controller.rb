class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def add
    puts '>>>', article_params
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  def show
    @article = Article.find(params[:id])
  end


  private
    # 健壮参数, 避免批量赋值带来的安全隐患
    def article_params
      params.require(:article).permit(:content)
    end
end
