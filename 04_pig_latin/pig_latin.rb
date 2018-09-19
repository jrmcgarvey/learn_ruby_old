#write your code here

def translate(s)
  a=s.split(/\W+/)
  b=[]
  a.each do |word|
    b<<translate_word(word)
  end
  b.join(" ")
end

def translate_word(s)
  k=find_first_vowel(s)
  #puts "k is " + k.to_s
  if k>0
    s1=s[0..k-1]
  else
    s1=""
  end
  s2=s[k..-1]
  s2+s1+"ay"
end

private

def find_first_vowel(s)
  a=s.split("")
  index_vowel=-1
  ["a","e","i","o","u"].each do |vowel|
    i=a.index(vowel)
    if i
      if vowel == "u" and i>=1 and a[i-1]=="q" #qu case
      elsif index_vowel==-1 
        index_vowel=i
      elsif i<index_vowel
        index_vowel=i;
      end
    end
  end
  index_vowel
end
  