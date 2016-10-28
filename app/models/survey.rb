class Survey < ActiveRecord::Base
    has_many :data
    belongs_to :user
    validates :name, presence: true
    #文字を表示する場合「true」を { massage: "表示したいメッセージ"}
end
