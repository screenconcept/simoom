class Week < ActiveRecord::Base
  has_many :week_todo_lists
  has_many :todo_lists, :through => :week_todo_lists
  
  after_initialize do
    self.nr = Date.today.cweek if self.nr.blank?
  end
  
  def completed_hours
    0
  end
  
  def planned_hours
    0
  end
end
