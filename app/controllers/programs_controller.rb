class ProgramsController < ApplicationController
  def home
    # Your code goes below.

    my_birthday = Time.parse("January 3rd, 1989")
      today = Time.now
      seconds_since_i_was_born = today - my_birthday

      @your_output = "Seconds Since I was Born: " + seconds_since_i_was_born.to_s

      render("programs/home.html.erb")
  end

  def first_program
    # Your code goes below.

    the_number = rand(100)

      if the_number < 25
        @your_output = "Rock"
      elsif the_number > 75
        @your_output = "Paper"
      else
        @your_output = "Scissors"
      end

    render("programs/first_program.html.erb")
  end

  def second_program
    # Your code goes below.

    our_numbers = [4, 10, 6]        # Create an array of numbers
 squared_numbers = []            # Create an empty array

 our_numbers.each do |num|       # For each element in numbers, (refer to it as "num")
   square = num * num            # Square the number
   squared_numbers.push(square)  # Push it into the squared_numbers array
 end

 @your_output = squared_numbers.sum  # Sum the squares

    render("programs/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a

    # Your code goes below.
    mult_3 = []
    mult_5 = []
    mult_3_5 =[]
    numbers.each do |mult|
      threetimes = numbers % 3 == 0
        puts numbers
      fivetimes = numbers % 5 == 0
        puts numbers
      threeandfivetimes = numbers % 15 == 0
        puts numbers
    mult_3.push(threetimes)
    mult_5.push(fivetimes)
    mult_3_5.push(threeandfivetimes)
  end
    @your_output = mult_5+mult_3-mult_3_5

    render("programs/third_program.html.erb")
  end
end
