class RemoveCommentFromTopics < ActiveRecord::Migration[5.2]
  def change
    remove_column :topics, :comment, :text
  end
end
