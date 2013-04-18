# dp[i][j] := s_1...s_iとt_1...t_jに対するLCSの長さ

def lcs(s, t)
  dp = Array.new(s.size + 1){Array.new(t.size + 1){0}}

  s.size.times do |i|
    t.size.times do |j|
      if s[i] == t[j]
        dp[i + 1][j + 1] = dp[i][j] + 1
      else
        dp[i + 1][j + 1] = [dp[i][j + 1], dp[i + 1][j]].max
      end
    end
  end

  return dp[s.size][t.size]
end

puts lcs("abcd", "becd") == 3
