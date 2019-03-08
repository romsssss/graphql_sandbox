module Types
  class TaskType < BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :position, Integer, null: false
    field :ended_at, String, null: false
    field :status, String, null: false
  end
end
