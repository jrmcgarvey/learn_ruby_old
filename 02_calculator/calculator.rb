#write your code here
def add(a,b)
  a + b 
end

def subtract(a,b)
  a - b 
end

def sum(a)
  x=0
  a.each { |entry| x+=entry }
  x
end

def multiply(a)
  x=1
  a.each { |entry| x*=entry }
  x
end

def power(a,b)
  a**b
end

def factorial(a) 
  x=1
  a.downto(1).each { |entry| x*=entry }
  x
end