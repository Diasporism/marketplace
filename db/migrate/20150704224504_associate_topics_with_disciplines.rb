class AssociateTopicsWithDisciplines < ActiveRecord::Migration
  def change
    add_reference :topics, :discipline, index: true
  end
end
