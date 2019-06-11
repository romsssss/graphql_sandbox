module Types
  class MutationType < Types::BaseObject
    field :create_objective, mutation: Mutations::CreateObjective
  end
end
