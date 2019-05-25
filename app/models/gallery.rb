class Gallery < ApplicationRecord
  mount_uploader :image, ImageUploader

  before_save do
    if self.class.last
      self.order = self.class.last.order + 1 if order.nil?
    else
      self.order = 1
    end
  end

  rails_admin do
    show do
      field :image
      field :order
    end
    edit do
      field :image
      field :order
    end
  end
end
