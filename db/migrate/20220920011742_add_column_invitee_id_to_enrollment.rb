class AddColumnInviteeIdToEnrollment < ActiveRecord::Migration[7.0]
  def change
    add_column :enrollments, :invitee_id, :integer
  end
end
