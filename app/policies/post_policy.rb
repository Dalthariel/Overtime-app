class PostPolicy < ApplicationPolicy
	def update?
    # Case 1, user of record
    record.user_id == user.id || admin_types.include?(user.type))

    # Case 2, 
  end
end