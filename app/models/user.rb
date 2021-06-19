class User < ApplicationRecord
    validates :tytle, presence: true
    validate :date_before_start


  def date_before_start
    errors.add(:start_at, "は今日以降のものを選択してください") if
    start_date < Date.today

    errors.add(:end_at, "は今日以降のものを選択してください") if
    end_date < Date.today
   end
end
