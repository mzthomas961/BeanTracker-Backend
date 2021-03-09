class OrderSerializer < ActiveModel::Serializer
    attributes :id, :date, :note, :coffee_id, :user_id
  end
  