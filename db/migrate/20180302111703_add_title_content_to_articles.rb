class AddTitleContentToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :title, :string
    add_column :articles, :content, :string
  end
end
