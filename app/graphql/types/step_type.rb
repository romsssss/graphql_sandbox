module Types
  class StepType < BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :position, Integer, null: true
    field :ended_at, String, null: false
    field :status, String, null: false
    field :objective, ObjectiveType, null: false, method: :objective
    field :tasks, [Types::TaskType], null: false
  end
end
