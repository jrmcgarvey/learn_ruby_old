class Timer
  #write your code here
  attr_accessor :seconds
  
  def initialize
    @seconds=0
  end
  
  def time_string
    (@seconds/3600).to_s.rjust(2,"0") + ":" + ((@seconds%3600)/60).to_s.rjust(2,"0") + ":" + (@seconds%60).to_s.rjust(2,"0")
  end
end
