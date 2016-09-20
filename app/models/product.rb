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
  searchkick
end
