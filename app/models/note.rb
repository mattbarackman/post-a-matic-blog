
class Note < ActiveRecord::Base

  before_validation :capitalize_title

  validates_presence_of :title, :content

  private 
  
  def capitalize_title
    self.title = self.title.titlecase
  end

end