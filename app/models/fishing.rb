class Fishing < ApplicationRecord

  validates :image, presence: true
  validates :get_date, presence: true
  validates :fish_name,  presence: true,  length: {maximum: 40}                                                      # 40文字まで
  validates :get_number, presence: true,  format: {with: /\A[-]?[0-9]+(\.[0-9]+)?\z/},                               # 全て半角数値（マイナス、小数点、1~1000まで)
                                          numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 1000 } # 全て半角数値（マイナス、小数点、1~1000まで)
  validates :size,                        format: {with: /\A[-]?[0-9]+(\.[0-9]+)?\z/},
                                          numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 1000 }
  validates :weight,                      format: {with: /\A[-]?[0-9]+(\.[0-9]+)?\z/},                               # 全て半角数値（マイナス、小数点、1~1000まで)
                                          numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 1000 }
  validates :style, presence: true,        inclusion: { in: ["ルアー","エサ釣り","その他"] }
  validates :explain,                     length: {maximum: 1000}                                                    # 1000文字まで
  validates :wether, presence: true,       inclusion: { in: ["晴れ","曇り","雨","その他"] }
  
  belongs_to :user
  has_one_attached :image

end