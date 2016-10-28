class User < ActiveRecord::Base
    has_many :surveys
    validates :name, presence: true
    validates :email, presence: true
    validates :password_digest, presence: true
    #文字を表示する場合「true」を { massage: "表示したいメッセージ"}
end
