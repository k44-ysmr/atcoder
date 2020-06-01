164
A問題
S, W = gets.split.map &:to_i
puts S <= W ? 'unsafe' : 'safe'

B問題
a,b,c,d=gets.split.map &:to_f
puts (c/b).ceil<=(a/d).ceil ? "Yes" : "No"
---
A, B, C, D = gets.split.map &:to_i
puts (A - 1) / D >= (C - 1) / B ? "Yes" : "No"
---
while (a > 0 && c > 0)
    c -= b
    a -= d
end
puts (c <= 0 ? "Yes" : "No")

C問題
n = gets.to_i
s = n.times.map { gets.chomp }
puts s.uniq.size

D問題
E問題
F問題

006C問題(a+b+c=m; 2a+3b+4c=n)
N,M=gets.strip.split.map &:to_i
if M<N*2 || M>4*N
  puts "-1 -1 -1"
elsif M<=3*N
  puts "#{3*N-M} #{M-2*N} 0"
else
  puts "0 #{4*N-M} #{M-3*N}"
end

163A問題(円周を求める)
puts gets.to_f*6.28

163B問題(nから入力合計をひく)
n,m=gets.split.map &:to_i
a=gets.split.map &:to_i
p [n-a.sum,-1].max

163C問題(上司部下)
a=*?1..gets.chop
b=gets.split.tally
a.map{p b[_1]||0}

163D問題
eval"N,K="+`tr \\  ,`
p (K..N+1).sum{1-(_1+~N)*_1}.%10**9+7

r = (k..n+1).map{|i| i*(n-i+1)+1 % m }.sum (uptoでも代用可) 

162A問題(入力の3桁に7が含まれるか)
p gets.include?(?7) ? "Yes" : "No"

162B問題(FizzBuzz)
p (1..gets.to_i).select{|n|n%3*n%5>0}.sum

162A問題
/s\|f\|.t\|c$/cYes
cNo

160
k,n=gets.split.map &:to_i
A=gets.split.map &:to_i
A.sort!
A<<k+A[0]
p k-(0...n).map{|i|A[i+1]-A[i]}.max

159
n,m=gets.split.map &:to_i
p n*(n-1)/2+m*(m-1)/2

B問題
s = gets
n = s.length
(s[0...(n-1)/2] == s[(n+1)/2...(n-1)]) ? puts("Yes") : puts("No")

C問題
p gets.to_f**3/27

A問題
n=gets.to_i
p n/2+n%2


h=gets.to_i
c=0
loop{
  if h==1
    return
    c+=
  else
    h/2
    c+=
  end
end
p c


165回A問題(a以上b以下の数字の中にkの倍数が存在するか)
k=gets.to_i
a,b=gets.split.map &:to_i
nums = [*(a..b)]
nums.each do |num|
  b = true if num%k == 0
end
puts b == true ? 'OK' : 'NG'

A<=B/K*K

B問題
x=gets.to_i
i=100
c=0
while i < x do
  i = i*1.01
  c += 1
end
puts c

C問題
n,m,q=gets.split.map &:to_i
s=[]
result = []
q.times do
  num = gets.split.map &:to_i
  s << num
end
ar = [*(1..m)].repeated_combination(n).to_a
ar.each do |ar|
  sum = 0
  s.each do |s|
    a,b,c,d=s[0],s[1],s[2],s[3]
    sum = sum + d if ar[b-1] - ar[a-1] == c
  end
  result << sum
end
puts result.max

166D問題
X = gets.to_i
a,b = (-200..200).to_a.product((-200..200).to_a).find{|a,b| a**5-b**5 == X}
puts "#{a} #{b}"

161D問題
k=gets.to_i
z=*1..9
a=0
k.times{
  a=z.shift
  b=a%10
  z << a*10 + (b-1) if b != 0
  z << a*10 + b
  z << a*10 + (b+1) if b != 9
  }
p a

167C問題
n, m, x = gets.split.map(&:to_i)
c = Array.new(n){gets.split.map(&:to_i)}
ans = []
te = [*1..n].map{|i|c.combination(i).to_a}.flatten(1)
te.each{|i|
	a = i.to_a.transpose.map(&:sum)
	ans << a[0] if a[1..m].all?{|p| p >= x}
}
if ans.size.zero?
	puts -1
else
	puts ans.min
end

D問題
N,K = gets.split.map(&:to_i)
A = [nil] + gets.split.map(&:to_i)
v = []
 
pos = 1
l = 0
while l < K && !v[pos]
  v[pos] = l
  pos = A[pos]
  l += 1
end
 
if l < K
  k = (K - l) % (l - v[pos])
  k.times do 
    pos = A[pos]
  end
end
 
puts pos

E問題
N,M,K = gets.split.map(&:to_i)
Mod = 998244353
 
D,U = [1],[1]
[K,N/2].min.times{|i| i+=1
	D << D[-1] *(N-i) % Mod
	U << U[-1] *  i   % Mod
}
U.map!{|_| _.pow(Mod-2,Mod) }
Com = lambda{|r| r = [N-1-r,r].min
	D[r] * U[r] % Mod
}
 
p (0..K).inject(0){|a,k|
	(a + Com[k] * M * (M-1).pow(N-1-k,Mod)) % Mod
}

F問題
n = gets.to_i
a = b = 0
ary = []
 
n.times do
    s = gets.chomp
 
    i = j = 0
    s.each_char do |c|
        if c == ?(
            i += 1
        elsif i == 0
            j += 1
        else
            i -= 1
        end
    end
 
    if j == 0
        a += i
    elsif i == 0
        b += j
    else
        ary << [j, i]
    end
end
 
ary.sort_by!{|e| e[0] - e[1]}.each do |e|
    a -= e[0]
    break if a < 0
    a += e[1]
end
 
puts a == b ? "Yes" : "No"

require 'prime'
n=gets.to_i
c = 0
while n%1 == 0
  n = Math.sqrt(n)
  p n
end
p n%1

169D問題
require 'prime'
 
sum = 0
Prime.prime_division(gets.to_i).each do |(p, e)|
  i = 1
  while e >= i
    e -= i
    sum += 1
    i += 1
  end
end
 
puts sum