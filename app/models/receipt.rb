class Receipt < ApplicationRecord
  enum :status, { pending: 0, processed: 1, failed: 2 }

  mount_uploader :image, ReceiptImageUploader
end
