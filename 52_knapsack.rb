GOODS = [
  {weight: 2, value: 3},
  {weight: 1, value: 2},
  {weight: 3, value: 4},
  {weight: 2, value: 2},
]
W = 5

# i番目以降の品物から重さの総和がj以下になるように選ぶ
def choose(i, j)
  if i == GOODS.size
    return 0
  elsif j < GOODS[i][:weight]
    # この品物は入らない
    return choose(i + 1, j)
  end

  # 入れない場合と入れる場合を両方試す
  return [choose(i + 1, j), choose(i + 1, j - GOODS[i][:weight]) + GOODS[i][:value]].max
end

puts choose(0, W) == 7


