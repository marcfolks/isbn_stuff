def isbn_length10(isbn_num)
  isbn_num.length == 10

end

def isbn_remove(isbn_num)
     isbn_num.gsub(/ - /, ' ')
     p isbn_num
end

def isbncheck(isbn_num)
pain='X'||'x'
isbn_num.downcase
    p isbn_num
isbn = isbn_num.split('')
p isbn
last = isbn.pop
p isbn
if last == (pain)

  then    isbn.push('10')
    else isbn.push(last)
end
    p isbn
    isbn.join
end
#   def numcheck(isbn_num)
#     if isbn_num == ()
#         "valid"
#         else "invalid"
#         end
  

 def checksum(isbn_num) 
        charPos = 0 
        csumTotal = 0 
        iarr = isbn_num.split(//)
        last = iarr.pop 
        p "iarr#{iarr}isbn iarr"
        for i2 in iarr 
          charPos += 1 
          csumTotal = csumTotal + (charPos * i2.to_i) 
          puts "csumTotal (running) = #{csumTotal}" 
        end 
        puts "csumTotal = #{csumTotal}" 
        checkDigit = csumTotal % 11
        p checkDigit 
        p "#{last}isbn last"
        if checkDigit.to_i == last.to_i
            "valid"
            else "invalid"
            
           end
            
       end 
 
 def isbn_val(isbn_num)
    isbn_remove(isbn_num)
    p isbn_num
    isbn_length10(isbn_num)
    p isbn_num
    isbncheck(isbn_num)
    p isbn_num
    isbn_length10(isbn_num)
    p isbn_num
    checksum(isbn_num)
    end

