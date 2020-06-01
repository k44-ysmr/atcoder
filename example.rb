進数変換
255.to_s(2) # => "11111111"
入力
S, W = gets.split.map &:to_i
１文字づつ文字列を処理する
gets.chomp.chars
配列の中に配列を作る
abcds=q.times.map{ gets.split.map &:to_i }

N,M,Q,*as=$<.read.split.map(&:to_i)
abcds = as.each_slice(4)

1からmまでの順序配列を作る
[*(1..m)]
reduce/injectを使う
合計を求める
sum = 0；(1..10).each { |i| sum += i }
(1..10).reduce(0) { |sum, i| sum + i }
(1..10).reduce(:+)
２乗和
[2, 3, 4, 5].reduce(0) {|result, item| result + item**2 }

n,m,q=gets.split.map &:to_i
abcds=q.times.map{ gets.split.map &:to_i }
puts [*1..m+n-1].combination(n).map{|as|
  abcds.reduce(0){|s,(a,b,c,d)|
    as[b-1]-as[a-1]-(b-a)==c ? s+d : s
  }
}.max

多重代入
foo,*bar = 1, 2, 3      # foo = 1; bar = [2, 3]
入力を全て読む
K,A,B=`dd`.split.map &:to_i　　# $<.readともかける
stepメソッド

flatten/flat_map

t=gets.to_i
ns=t.times.map{ gets.split.map &:to_i }
ns.each do |ns|
  n,a,b,c,d=ns
  p n
end
