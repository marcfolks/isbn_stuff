def isbn_length10(isbn_num)
    isbn_num.length == 10
end
def isbn_length13(isbn_num)
    isbn_num.length == 13
end
def isbn_remove(isbn_num)
    isbn_num.gsub(/[ ,-]/,"")
end