class Book

attr_accessor :title

  def title=(s)

    a=s.split(/\W+/)
  #  puts "a is " + a.to_s
    b=[]
    start=true
    smallwords=["a","an","and", "the", "of", "over", "in"]
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
    c=b.join(" ")
    @title=c
  end

end