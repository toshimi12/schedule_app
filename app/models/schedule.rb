class Schedule < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20 }
validate :start_end_check
    def start_end_check
      if self.end_at < self.start_at
       errors.add(:finish, "は開始日より前の日付に登録できません。")  
      end
    end
  validates :memo, length: {maximum:500}
  validates :start_at,presence: true
  validates :end_at,presence: true
end

