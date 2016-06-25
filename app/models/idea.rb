class Idea < ActiveRecord::Base
  default_scope  { order(:updated_at => :desc) }

  def draft?
    status == 'draft'
  end

  def pub?
    status == 'pub'
  end
end
