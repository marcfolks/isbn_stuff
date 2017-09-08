def isbn_length10(isbn_num)
    if(isbn_num.length == 10)
        ver = "valid"
        else ver ="invalid"
    end
   p ver     
end
# def isbn_length13(isbn_num)
#     isbn_num.length == 13
#end
def isbn_remove(isbn_num)
    isbn_num.gsub(/[ ,-]/,"")
end
def isbn_x_detect(isbn_num)
    isbn_num2=[]#empty arry
    isbn = isbn_num.split('')#break the element into array
    if isbn.include?("x")#find a x if x is there
    isbn.pop
    isbn.push('10')#put ten in place of x
    isbn_num2.to_i << isbn.join
    end
    if isbn_num2 == [1..10]
       then "valid"
    else "invalid"
    end
end


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


     
     #  puts "for partial isbn #{isbn_num} the checkDigit = #{checkDigit}; complete isbn = #{isbn_num}#{checkDigit}" 
    #    checkDigit 
# #      #i didnt make this i copied and paste it to try an learn from it it seems be general ball park
def isbn_checker(isbn_num)
    val = "invalid"
       isbn_length10(isbn_num)
        isbn_remove(isbn_num)
       isbn_x_detect(isbn_num)
       if checksum(isbn_num)== true
        val="valid"
        
        

    end    

end