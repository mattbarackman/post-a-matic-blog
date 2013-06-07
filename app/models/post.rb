
class Post < ActiveRecord::Base

  validates_presence_of :title, :body

  before_save :capitalize_title

  has_and_belongs_to_many :tags

  def tag_list
    self.tags.map{|tag| tag.name }.join(",")
  end
  private 
  
  def capitalize_title
    self.title = self.title.titlecase
  end

end