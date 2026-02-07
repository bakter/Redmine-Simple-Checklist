class SimpleChecklist < ActiveRecord::Base
  belongs_to :issue
  validates_presence_of :subject
end
