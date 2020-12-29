class Site < ApplicationRecord

  before_create :add_site_uuid


  def add_site_uuid
    self.site_uuid = SecureRandom.uuid
  end
end
