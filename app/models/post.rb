# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  attr_accessible :content, :title
  #:order => "created_at DESC"
  default_scope order('updated_at DESC')
  #:order => "created_at DESC"
  has_many :comments
end
