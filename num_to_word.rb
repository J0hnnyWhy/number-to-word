class Fixnum

  define_method(:to_words) do
    digits = { 0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine",
      10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen" }
    tens = { 0 => "", 2 => "twenty", 3 => "thirty", 4 => "fourty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninty" }
    hundred = ["hundred", "thousand", "million", "billion", "trillion"]
    writen = []
      if self.<=19
        digits.fetch(self)
      else
        numbers = self.to_s.split('').map(&:to_i)
        numbers.reverse!()
        if numbers.length==2
           writen.push(tens.fetch(numbers[1]))
           writen.push(digits.fetch(numbers[0]))

        elsif numbers.length==3
            writen.push(digits.fetch(numbers[2]))
            writen.push(hundred[0])
            writen.push(tens.fetch(numbers[1]))
            writen.push(digits.fetch(numbers[0]))

        elsif numbers.length==4
            writen.push(digits.fetch(numbers[3]))
            writen.push(hundred[1])
            writen.push(digits.fetch(numbers[2]))
            writen.push(hundred[0])
            writen.push(tens.fetch(numbers[1]))
            writen.push(digits.fetch(numbers[0]))


        elsif numbers.length==5
          if  numbers[4]==1
                teen = []
                teen.push(numbers[4])
                teen.push(numbers[3])
                teens = teen.join()
                teens = teens.to_i
                writen.push(digits.fetch(teens))
                writen.push(hundred[1])
                writen.push(digits.fetch(numbers[2]))
                writen.push(hundred[0])
                writen.push(tens.fetch(numbers[1]))
                writen.push(digits.fetch(numbers[0]))

          else  writen.push(tens.fetch(numbers[4]))
                writen.push(digits.fetch(numbers[3]))
                writen.push(hundred[1])
                writen.push(digits.fetch(numbers[2]))
                writen.push(hundred[0])
                writen.push(tens.fetch(numbers[1]))
                writen.push(digits.fetch(numbers[0]))
           end     
        elsif numbers.length==6
                writen.push(digits.fetch(numbers[5]))
                writen.push(hundred[0])
          if  numbers[4]==1
                teen = []
                teen.push(numbers[4])
                teen.push(numbers[3])
                teens = teen.join()
                teens = teens.to_i
                writen.push(digits.fetch(teens))
                writen.push(hundred[1])
                writen.push(digits.fetch(numbers[2]))
                writen.push(hundred[0])
                writen.push(tens.fetch(numbers[1]))
                writen.push(digits.fetch(numbers[0]))

          else  writen.push(tens.fetch(numbers[4]))
                writen.push(digits.fetch(numbers[3]))
                writen.push(hundred[1])
                writen.push(digits.fetch(numbers[2]))
                writen.push(hundred[0])
                writen.push(tens.fetch(numbers[1]))
                writen.push(digits.fetch(numbers[0])) 
           end  
        else numbers.length==7
                writen.push(digits.fetch(numbers[6]))
                writen.push(hundred[2])
                writen.push(digits.fetch(numbers[5]))
                writen.push(hundred[0])
          if  numbers[4]==1
                teen = []
                teen.push(numbers[4])
                teen.push(numbers[3])
                teens = teen.join()
                teens = teens.to_i
                writen.push(digits.fetch(teens))
                writen.push(hundred[1])
                writen.push(digits.fetch(numbers[2]))
                writen.push(hundred[0])
                writen.push(tens.fetch(numbers[1]))
                writen.push(digits.fetch(numbers[0]))

          else  writen.push(tens.fetch(numbers[4]))
                writen.push(digits.fetch(numbers[3]))
                writen.push(hundred[1])
                writen.push(digits.fetch(numbers[2]))
                writen.push(hundred[0])
                writen.push(tens.fetch(numbers[1]))
                writen.push(digits.fetch(numbers[0]))             
          end
        end 
      end
  end
end   
        
