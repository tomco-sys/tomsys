class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         #以下を追加
         validates :usercode, presence: true, uniqueness: true, length: {maximum: 50}

         #登録時にメールアドレスを不要とする
         def email_required?
           false
         end

         def email_changed?
           false
         end

end
