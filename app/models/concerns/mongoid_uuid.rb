module MongoidUuid
  extend ActiveSupport::Concern

  included do
    before_validation :generate_uuid
  end

  def generate_uuid
    self._id = UUID.generate if self._id.class == BSON::ObjectId
  end
end

