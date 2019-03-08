module Types
  class ObjectiveType < BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :ended_at, String, null: false
  end
end
