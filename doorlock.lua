creator = advtech
version = 0.0.1
--Registers new user
if not fs.exists("/.user/.usernames") then
 print("Set Username")
 username=read()
--writes username to file
 filew = io.open("/.user/.usernames", "w")
 filew:write(username)
 filew:close()
--Askes for a password to be connected to username
 print("Would you like a Password?")
 input=read()
 if input =="1" then
  print("Please enter your password")
  password=read('*')
--writes password to file
 filew = io.open("/.user/.password", "w")
 filew:write(password)
 filew:close()
 elseif input=="2" then
  print("Your Account is Unsecure")
  end
 else
 filew = io.open("/.user/.usernames", "r")
 write("Username: ")
 username=filew:read()
 input=read()
filew:close()
 if input==username then 
  filew =io.open("/.user/.password", "r")
  write("Password: ")
  password=filew:read()
  input1=read('*')
  if input1== password then
   print("Welcome Home, ".. username)
   redstone.setOutput("back", true)
   sleep(1)
   redstone.setOutput("back", false)
   sleep(5)
   redstone.setOutput("back", true)
   print("Locking!")
   sleep(1)
   os.shutdown()
  end
 end
end
