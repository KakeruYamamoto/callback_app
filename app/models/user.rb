class User < ApplicationRecord
  before_create :ensure_has_name
  before_create CreateAgeAtCallback.new



  before_save do
    puts '１番目に呼ばれたコールバック'
  end

  before_save do
    puts '２番目に呼ばれたコールバック'
  end
  # before_create do
  #     self.name = 'Taro' if name.blank?
  # end

# #after_initializeは、Active Recordのオブジェクトがインスタンス化されるたびに呼び出されます
#   after_initialize do |user|
#     p user
#     puts "オブジェクトを生成しました！"
#     user.name = "Taro"
#   end
#
#   private
#
#  def ensure_has_name
#    puts "nameの値をTaroに設定します！"
#    self.name = 'Taro' if name.blank?
#  end
end
