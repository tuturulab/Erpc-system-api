class Company < ApplicationRecord

  mount_uploader :logo, LogoUploader

  validates :name, presence: true
  validates :description, presence: true

  def logo_url
    if self.logo.attached?
      Rails.application.routes.url_helpers.rails_blob_path(self.logo, only_path: true)
    else
      nil
    end
  end

end
