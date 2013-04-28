require 'rubygems'
require 'twilio-ruby'

# authentication things
account_sid = "AC8a8f5d85af54eef44f70b66931af0043"
auth_token = "9eb86102da1a4575516cf0d5ab38f7b0"
from = "+19512254918"

to = "+19492327008"
message = "Hello, this is a test from spacefreeze!"

client = Twilio::REST::Client.new account_sid, auth_token
 
client.account.sms.messages.create( :from => from, :to => to, :body => message)
   
puts "Sent message '#{message}' to #{to}"
