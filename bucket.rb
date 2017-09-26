require 'rubygems'
require 'aws-sdk'
require 'csv'
load "./local_env.rb" if File.exists?('./local_env.rb')
 Aws.use_bundled_cert!
def bucketlist
  bucketlist = "isbn_num"
  push_b(bucketlist)
end 
def push_b(bucketlist)
  file   = 'results.csv'
  Aws::S3::Client.new(
  access_key_id: ENV['AWS_ACCESS_KEY_ID'],
  secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  region: ENV['AWS_REGION'])
write_to_file = File.open(file,"a")
write_to_file << bucketlist + "\n"
write_to_file.close
  bucket = 'isbncvs63'
  file   = 'results.csv'
  s3 = Aws::S3::Resource.new(region: 'us-east-2')
  obj = s3.bucket(bucket).object(file)
# # string data
         File.open('input_csv.csv', 'rb')do|file|
        obj.put(body:file)
        end
end
def get_file()
    s3 = Aws::S3::Client.new
    file = s3.get_object(bucket:'isbncvs63', key:'results.csv')
    bucketlist = File.body.read
end 
 