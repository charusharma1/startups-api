class Startup < ActiveRecord::Base
  validates :name, presence: true
end
