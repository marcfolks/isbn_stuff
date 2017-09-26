require 'csv'

def isbn_length10(isbn_num)
  isbn_num.length == 10
end
def isbn_length13(isbn_num)
    isbn_num.length == 13
end

def isbn_remove(isbn_num)
     isbn_num = isbn_num.gsub!(/[-, ]/,'')
    #  isbn = isbn_num.gsub(/[ ]/,'')
end
def isbn_remove_letter(isbn_num)
    isbn_num = isbn_num.gsub!(/[a..z,A..Z]/,'')
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
def checksum13(isbn_num) 
             charPos = 0 
             csumTotal = 0 

         iarr = isbn_num.split(//)
         last = iarr.pop 
    for i1 in iarr 
               cP2 = charPos/2.to_f 
               puts "#{cP2}; #{cP2.round}; #{cP2.floor}" 
                
        if (cP2.round == cP2.floor) 
         	csumTotal = csumTotal + i1.to_i 
         	puts "csumTotal_a = #{csumTotal} + #{i1.to_i}" 
        else 
         	csumTotal = csumTotal + (3*i1.to_i) 
         	puts "csumTotal_b = #{csumTotal} + #{3*i1.to_i}" 
        end       
               charPos += 1 
    end 
               puts "csumTotal = #{csumTotal}" 
        if (csumTotal == (csumTotal/10.to_i)*10) 
         	checkDigit = "0" 
        else 
         	checkDigit = 10-(csumTotal - (csumTotal/10.to_i)*10) 
        end
        if checkDigit.to_i == last.to_i
               true
           else  
               false
               
        end
        
end
def csv_func_web
    write_file = File.open("results.csv", "w" , { :col_sep => "\n" , :row_sep => "\n"} )
    CSV.foreach('new_.csv') do |row|
        if validate(row[1]).to_s== "true"
            row << ("valid")
                else
            row << ("invalid")
        end
    
          write_file.puts row[0] + "," + row[1] + "," + row[2]
   end
end       
def checksum10(isbn_num) 
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
                 true
                else  
                 false
                    
        end
end  
  def validate(isbn_num)
     if checksum10(isbn_num)||checksum13(isbn_num) == true 
         "valid"
     else 
         "invalid"
     end
 end
  

def check_csv(isbn_num)
    write_file = File.open("results.csv", "w")

    CSV.foreach('input_csv.csv') do |row|
        if validate(isbn_num).to_s == true||false
            bucketlist << ("valid")
        else
            bucketlist << ("invalid")
        end
        write_file.puts row[0] + ", " + row[1] + ", " + row[2]
    end
end
def isbn_val(isbn_num)
    isbn_remove(isbn_num)
    if 
        isbn_length10(isbn_num)
        p isbn_num
            isbncheck(isbn_num)
            p isbn_num
            checksum10(isbn_num)
            p isbn_num
    else
         isbn_length13(isbn_num)
            checksum13(isbn_num)
    end
validate(isbn_num)
check_csv(isbn_num)
end


