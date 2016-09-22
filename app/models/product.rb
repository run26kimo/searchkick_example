# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  desc        :text
#  category_id :integer
#  image       :string
#  price       :integer
#  published   :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base
  searchkick searchable: [:name, :desc, :category_name],
             suggest: [:name],
             highlight: [:name, :desc, :category_name]

  belongs_to :category

  scope :search_import, -> { includes(:category) }

  def search_data
    {
      name: name,
      category_name: category.name,
      desc: desc
    }
  end
end
