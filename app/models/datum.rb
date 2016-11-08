class Datum < ActiveRecord::Base
    belongs_to :survey
    #dateは日付である制限(2016-10-30 15:32:40)
    validates :date, presence: true
    #datetime型の制限がわからない(setupの時点で止まっている)
    
    #緯度経度は数値である制限(緯度-90~90の間である)(-180~180)
    validates :latitude, presence: true,
    numericality: {greater_than_or_equal_to: -90 ,less_than_or_equal_to: 90}
    #validates :latitude, presence: true,  inclusion: {numericality: true, in: -90..90 }
    validates :longitude, presence: true, 
    numericality: {greater_than_or_equal_to: -180 ,less_than_or_equal_to: 180}
    
    #データの項目は数値である制限(範囲は0~3)
    validates :value1,
    numericality: {greater_than_or_equal_to: 0 ,less_than_or_equal_to: 3}
    #同じ制限25個を少ない量で書く方法がないか
    #部分テンプレート?

end
