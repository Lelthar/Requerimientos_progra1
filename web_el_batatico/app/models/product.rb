class Product < ApplicationRecord

has_attached_file :cover, styles: {medium: "1280x720", thumb:"800x600", mini:"400x200" }
validates_attachment_content_type :cover, content_type:  /\Aimage\/.*\Z/

after_create :save_categories

def categories=(value)
	@categories = value
end

private
def save_categories
    @categories.each  do |category_id|
	HasCategory.create(category_id: category_id , product_id: self.id)
end
end


end
 