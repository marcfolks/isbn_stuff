def isbn_length10(isbn_num)
  isbn_num.length == 10

end
#    p ver     
# end
# def isbn_length13(isbn_num)
#      isbn_num.length == 13
# end
def isbn_remove(isbn_num)
     isbn_num.gsub(/[ ,-]/,"")
end
# def isbn_x_detect(isbn_num)
#     isbn_new = ''
#  isbn = isbn_num.split('')#break the element into array
# isbnp = isbn.pop
# if isbnp = 'X'||'x'
#     isbn.push('10')
#     isbn_new << isbn.join
#     else isbn.push(isbnp)
#     isbn_new << isbn.join
#   end
# end 
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
    isbn.join
end
 def lettercheck(isbn_num)
    isbn_num.match(/^[0-9]+$/)
  
 end

# if isbn_new == ('1..10') 
#     "valid"
#     else "invalid"
# end 
  
#      else isbn.push(isbnx)
#      puts isbn
#      isbn.join#making array back to single element
#      push new array into empty brackets
# def isbn_invalid(isbn_num)
#     if isbn_num = ('a..z'||'A..Z')
#     "invalid"
#     else "valid"

#     end
# end    
# def alpha_check(isbn_num)
# 	last = last
# 	upper = *("A".."Z")
# 	lower = *("a".."z")
# 	isbn = isbn_num.chars
# 	last = isbn.pop
#     if last == "x"
# 	    isbn.push("10")
# 	else
# 		isbn.push(last)
#     end	
# 	p isbn
# 	if isbn.include?(upper) 
# 		p "Not a valid ISBN"
# 	elsif isbn.include?(lower)
# 		p "not a valid ISBN"
# 	else	
# 		p "Valid"
# 	end
		
# end
#  p alpha_check("a1235g5679")

 def checksum(isbn_num) 
        charPos = 0 
        csumTotal = 0 
        iarr = isbn_num.split(//)
        iarr.pop
        iarr.push('10') 
        for i2 in iarr 
          charPos += 1 
          csumTotal = csumTotal + (charPos * i2.to_i) 
          puts "csumTotal (running) = #{csumTotal}" 
        end 
        puts "csumTotal = #{csumTotal}" 
        checkDigit = csumTotal % 11
        p checkDigit 
       if (checkDigit == "10") 
          checkDigit = 'X'
           if checkDigit = iarr.last
            
           end
       end 
 end


     
#        puts "for partial isbn #{isbn_num} the checkDigit = #{checkDigit}; complete isbn = #{isbn_num}#{checkDigit}" 
#         checkDigit 
#       #i didnt make this i copied and paste it to try an learn from it it seems be general ball park
# def isbn_checker(isbn_num)
#     val = "invalid"
#        isbn_length10(isbn_num)
#         isbn_remove(isbn_num)
#        isbn_x_detect(isbn_num)
#        if checksum(isbn_num)== true
#         val="valid"
        
#        end 

#     end    

# end