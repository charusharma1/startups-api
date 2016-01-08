class Startup < ActiveRecord::Base
  validates :name, :location, :job_openings, presence: true
end
