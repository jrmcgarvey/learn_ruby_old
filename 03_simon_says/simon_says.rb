#write your code here
def echo(s)
  s
end

def shout(s)
  s.upcase
end

def repeat(s,c=2)
  a=[]
  while c>0 do
    a << s
    c-=1
  end
  a.join(" ")
end

def start_of_word(s,c=1)
  s.slice(0,c)
end

def first_word(s)
  a=s.split(/\W+/)
  a[0]
end

def titleize(s)
  a=s.split(/\W+/)
  b=[]
  start=true
  smallwords=["a","an","and", "the", "of", "over"]
  a.each do |part|
    if start 
      b << part.capitalize
      start = false
    elsif smallwords.include?(part)
      b << part
    else
      b << part.capitalize
    end
  end
  b.join(" ")
end