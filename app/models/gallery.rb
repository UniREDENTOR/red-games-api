class Gallery < ApplicationRecord
  mount_uploader :image

  before_save do
    self.order = self.class.last.order + 1 if order.nil?
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
