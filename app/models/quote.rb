class Quote < ActiveRecord::Base

  validates :author, :presence => true
  validates :text, :presence => true
end
