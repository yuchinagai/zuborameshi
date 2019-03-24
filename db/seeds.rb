categories = %w(鶏肉 豚肉 牛肉 ごはんもの 魚 野菜 パスタ 麺)

categories.each do |category|
  Category.create(name: category)
end