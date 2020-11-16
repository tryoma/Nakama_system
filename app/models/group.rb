class Group < ApplicationRecord
  validates :group_name, presence: true, length: { maximum: 30 }
  validates :owner_id, presence: true, numericality:true
  validates :goal, presence: true, length: { maximum: 30 }
  validates :todo, presence: true, length: { maximum: 50 }
  validates :frequency, presence: true, numericality:true
  validates :start_goal_day, presence: true
  validates :end_goal_day, presence: true
  validates :genre, presence: true
  validates :limit_members, presence: true, :numericality => { :greater_than => 2 , :message => '２人以上を設定してください'}    # 数字が2より大きいか
  
  validates :start_goal_day_invalid_later_than_end_goal_day

  def start_goal_day_invalid_later_than_end_goal_day
    errors.add(:start_goal_day, "は終了より遅いので無効です") if start_goal_day > end_goal_day
  end
end
