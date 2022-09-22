class Book < ApplicationRecord
  
    has_one_attached :image
    belongs_to :user
    
    validates :title, presence: true
    #空でない、かつ最大200文字まで
    validates :body, {presence: true, length: {maximum: 200}}
    
    
    
  # 今回はBooksで画像投稿しないので下記は必要なし
  # def get_image
  #   unless image.attached?
  #     file_path = Rails.root.join('app/assets/images/no_image.jpg')
  #     image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
  #   end
  #   image
  # end
end
