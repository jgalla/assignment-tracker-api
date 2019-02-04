class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :assignment_name, :link, :due_date, :status, :user_id
  belongs_to :user
end
