class Api::V1::PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :body, :created_at, :slug
  # has_one :image, serializer: V1::ImageSerializer

end
