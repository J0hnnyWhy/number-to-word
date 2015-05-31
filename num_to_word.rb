class Fixnum

  define_method(:to_words) do
    digits = { 0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine",
      10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen" }
    tens = { 0 => "", 2 => "twenty", 3 => "thirty", 4 => "fourty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninty" }
    big_num = ["hundred", "thousand", "million", "billion", "trillion"]
    written = []
      if self.<=19
        digits.fetch(self)
      else
        numbers = self.to_s.split('').map(&:to_i)
        numbers.reverse!()
        x = numbers.length

        if x==10 #1,111,111,111
              written.push(digits.fetch(numbers[9]))
              written.push(big_num[3])
              x = x -1             
        end

        if x==9 #999,999,999
              written.push(digits.fetch(numbers[8]))
              written.push(big_num[0])
              x = x -1
        end

        if x==8 #88,888,888
          if  numbers[7]==1
                teen = []
                teen.push(numbers[7])
                teen.push(numbers[6])
                teens = teen.join()
                teens = teens.to_i
                written.push(digits.fetch(teens))
                x = x -1

          else  written.push(tens.fetch(numbers[7]))
                x = x -1
          end
        end

        if x==7 #7,777,777
              written.push(digits.fetch(numbers[6]))
              written.push(big_num[2])
              x = x -1             
        end

        if x==6 #666,666
                written.push(digits.fetch(numbers[5]))
                written.push(big_num[0])
                x = x -1
        end

        if x==5 #55,555
          if  numbers[4]==1
                teen = []
                teen.push(numbers[4])
                teen.push(numbers[3])
                teens = teen.join()
                teens = teens.to_i
                written.push(digits.fetch(teens))
                x = x -1

          else  written.push(tens.fetch(numbers[4]))
                x = x -1
          end
        end 

        if x==4 #4,444
            written.push(digits.fetch(numbers[3]))
            written.push(big_num[1])
            x = x -1
        end

        if x==3 #333
            written.push(digits.fetch(numbers[2]))
            written.push(big_num[0])
            x = x -1
        end

        if x==2 #22
           written.push(tens.fetch(numbers[1]))
           written.push(digits.fetch(numbers[0]))
        end

      end
      written.join(' ')
  end
end   