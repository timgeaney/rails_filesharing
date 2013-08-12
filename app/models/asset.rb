class Asset < ActiveRecord::Base
  attr_accessible :user_id, :uploaded_file

  belongs_to :user 

  has_attached_file :uploaded_file

  validates_attachment_size :uploaded_file, :less_than => 10.megabytes  
  validates_attachment_presence :uploaded_file

  def file_name
    uploaded_file_file_name
  end
end
