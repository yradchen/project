json.extract! @comment, :id, :body, :user_id, :project_id

json.author @comment.user.username
