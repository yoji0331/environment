class Datum < ActiveRecord::Base
    belongs_to :survey
    validates :date, presence: true
    validates :latitude, presence: true
    validates :longitude, presence: true
    #文字を表示する場合「true」を { massage: "表示したいメッセージ"}
    #フォーマットの制限
end
