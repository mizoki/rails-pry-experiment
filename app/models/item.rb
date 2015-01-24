class Item < ActiveRecord::Base
  # 合計金額（税抜）の計算
  #
  # == Paramerters:
  # なし
  #
  # == Returns:
  # 合計金額（税抜）
  #
  def calc_sum
    price * number
  end

  # 合計金額（税込）の計算
  #
  # == Paramerters:
  # なし
  #
  # == Returns:
  # 合計金額（税込）
  #
  def calc_tax
    self.calc_sum * (1 + (tax / 100))
  end
end
