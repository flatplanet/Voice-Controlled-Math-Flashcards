class FlashcardController < ApplicationController
  before_action :common_content, :only => [:index, :addition, :subtraction, :multiplication, :division]

  
  
  
  def common_content
    #use before_filter to make this stuff available to all methods in the controller
    
    
    @random1 = rand(1..100)
    @random2 = rand(1..100)
    #@speech = "#{@random1} #{@sign} #{@random2}"
    @count = params[:count].to_i
    @hello = 'hello'
  end
  
  def index
    @sign = "plus"
    @speech = "#{@random1} #{@sign} #{@random2}"
    @farty = params['farty']
    @category = params['category']
    @item = params['item']
    
    if @category == nil
    
    else
      @category = @category.gsub(/_/, " ")
    end
    
    if @item == nil
    
    else
      @item = @item.gsub(/_/, " ")
    end
    
    
    
    
  
    # Users Submitted Answer
    @answer = params[:answer].to_i
    
    # Original Numbers Asked
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    
    # Calculate The Actual Answer
    @real_answer = @num1 + @num2
    
    # Compare Submitted Answer to Real Answer
    if @num1 == 0
      # First test to see if we're on index page
      @result = ""
    else
      if @answer == @real_answer
        @result = "Correct! #{@num1} + #{@num2} = #{@real_answer}"
      else
        @result = "Too Bad! #{@num1} + #{@num2} = #{@real_answer}, not #{@answer}"
      end
    end
  end
  
  def test
  end

  def addition
    @sign = "plus"
    @speech = "#{@random1} #{@sign} #{@random2}"
    # Users Submitted Answer
    @answer = params[:answer].to_i
    
    # Original Numbers Asked
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    
    # Calculate The Actual Answer
    @real_answer = @num1 + @num2
    
    # Compare Submitted Answer to Real Answer
    if @num1 == 0
      # First test to see if we're on index page
      @result = ""
    else
      if @answer == @real_answer
        @result = "Correct! #{@num1} + #{@num2} = #{@real_answer}"
      else
        @result = "Too Bad! #{@num1} + #{@num2} = #{@real_answer}, not #{@answer}"
      end
    end
  end
  
  def subtraction
    @sign = "minus"
    @speech = "#{@random1} #{@sign} #{@random2}"
    # Users Submitted Answer
    @answer = params[:answer].to_i
    
    # Original Numbers Asked
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    
    # Calculate The Actual Answer
    @real_answer = @num1 - @num2
    
    # Compare Submitted Answer to Real Answer
    if @num1 == 0
      # First test to see if we're on index page
      @result = ""
    else
      if @answer == @real_answer
        @result = "Correct! #{@num1} - #{@num2} = #{@real_answer}"
      else
        @result = "Too Bad! #{@num1} - #{@num2} = #{@real_answer}, not #{@answer}"
      end
    end
  end
  
  def multiplication
    @sign = "times"
    @speech = "#{@random1} #{@sign} #{@random2}"
    # Users Submitted Answer
    @answer = params[:answer].to_i
    
    # Original Numbers Asked
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    
    # Calculate The Actual Answer
    @real_answer = @num1 * @num2
    
    # Compare Submitted Answer to Real Answer
    if @num1 == 0
      # First test to see if we're on index page
      @result = ""
    else
      if @answer == @real_answer
        @result = "Correct! #{@num1} * #{@num2} = #{@real_answer}"
      else
        @result = "Too Bad! #{@num1} * #{@num2} = #{@real_answer}, not #{@answer}"
      end
    end
  end
  
  def division
    @sign = "divided by"
    
    while @random2 > @random1 do
      @random2 = rand(1..100)
    end
    
    
    @speech = "#{@random1} #{@sign} #{@random2}"
    # Users Submitted Answer
    @answer = params[:answer].to_i
    
    # Original Numbers Asked
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    
    # Calculate The Actual Answer
    if @num2 == 0
      # do nothing
    else
      @real_answer = @num1 / @num2
    end
    # Compare Submitted Answer to Real Answer
    if @num1 == 0
      # First test to see if we're on index page
      @result = ""
    else
      if @answer == @real_answer
        @result = "Correct! #{@num1} / #{@num2} = #{@real_answer}"
      else
        @result = "Too Bad! #{@num1} / #{@num2} = #{@real_answer}, not #{@answer}"
      end
    end
  end
  

end
