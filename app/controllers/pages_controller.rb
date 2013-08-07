class PagesController < ApplicationController
  def home
    @time_now = Time.now
    @random_list =" "
    @sum =0 
    $i = 0
    $num = 5
    $number =0

    while $i < $num  do
      $number = rand(100)
       @random_list = @random_list + $number.to_s + ','
       @sum = @sum + $number
       $i +=1
    end   
  end

  def about
    @time_now =  Time.new
    @random = rand(100)
    
  end

  def contact
    @random = rand(1000)
    
    
  end
  
  
end
