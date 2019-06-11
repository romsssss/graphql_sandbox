module Mutations
  class CreateObjective < BaseMutation
    # arguments passed to the `resolved` method
    argument :title, String, required: true

    # return type from the mutation
    type Types::ObjectiveType

    def resolve(title: nil)
      Objective.create!(
        title: title
      )
    end
  end
end
