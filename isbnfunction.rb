def isbn_length10(isbn_num)
    isbn_num.length == 10
end
# def isbn_length13(isbn_num)
#     isbn_num.length == 13
#end
def isbn_remove(isbn_num)
    isbn_num.gsub(/[ ,-]/,"")
end
def isbn_x_detect(isbn_num)
    isbn_num2=[]#empty arry
    isbn = isbn_num.split("")#break the element into array
    p isbn
    if isbn.include?("x")#find a x if x is there
     isbn.pop
        p isbn
        isbn.push('10')#put ten in place of x
        p isbn
        isbn_num2 << isbn.join
        else p "invalid"
        p isbn_num2
        p isbn
end
    end

# def letter_check(isbn_num)
#     if isbn_num.match('x') then true
#         else false
#     end
# end
#def special_symb(isbn_num)
# class Isbn_checker 
#     isbn_ni=" 0-538-49781-2"
#   def verify_checkDigit(isbn_in, printValids) 
#      if isbn_in.length == 13 
#        return verify_checkDigit13(isbn_in.upcase, printValids) 
#      elsif isbn_in.length == 10 
#        return verify_checkDigit10(isbn_in.upcase, printValids) 
#      else 
#        return nil 
#      end 
#    end 
 
 
#    def verify_checkDigit10(isbn_in, printValids) 
#          retVal = false 
#    if (isbn_in.length == 10)  
#        chkDgtX = calc_checkDigit10(isbn_in[0,isbn_in.length-1]) 
#        #puts "chkDgtX = #{chkDgtX}; isbn_in = #{isbn_in}; isbn(substr) = #{isbn_in[0,isbn_in.length-1]}" 
#        if isbn_in == isbn_in[0,isbn_in.length-1].to_s + chkDgtX.to_s.upcase 
#  	retVal=true 
#  	if printValids 
#  	  puts "valid check digit found in isbn #{isbn_in}!" 
#  	end 
#        else 
#  	puts "INVALID check digit in isbn #{isbn_in}!" 
#        end 
#      else 
#        puts "invalid isbn_in length (#{isbn_in.length})" 
#      end 
#      retVal 
#    end 

# def calc_checkDigit10(isbn_ni) 
#      charPos = 0 
#      csumTotal = 0 
#      iarr = isbn_ni.split(//) 
#      for i2 in iarr 
#        charPos += 1 
#        csumTotal = csumTotal + (charPos * i2.to_i) 
#        puts "csumTotal (running) = #{csumTotal}" 
#      end 
#      puts "csumTotal = #{csumTotal}" 
#      checkDigit = csumTotal % 11 
#      if (checkDigit == 10) 
#        checkDigit = "X" 
#      end 
#      puts "for partial isbn #{isbn_ni} the checkDigit = #{checkDigit}; complete isbn = #{isbn_ni}#{checkDigit}" 
#      checkDigit 
#      #i didnt make this i copied and paste it to try an learn from it it seems be general ball park
# end  
#     end
  