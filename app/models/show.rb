class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters
  
  def actors_list
    # Show.actors.full_name.length
    Show.includes(name)
    # Show.joins("first_name","last_name").length
  end  
  
  #     Show.order(name: :asc)
end