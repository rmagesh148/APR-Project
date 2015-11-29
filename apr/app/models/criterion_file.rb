class CriterionFile < ActiveRecord::Base
  belongs_to :criterion_detail
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :name, presence: true # Make sure the file name is present.
end
