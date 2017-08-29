def isbn_length(isbn_num)
    isbn_num.length == 10
end
def isbn_remove(isbn_num)
    isbn_num.gsub(/[-]/,"")
end