-- Author: Bensaved
-- Goal: To log users in and out with passwords and usernames, NOT secure*/

-- Check if user logged in
function login()
if not userLoggedIn
	--Prompt for user credentials
	print ("Username?")
	username=read()
		
	--Verify User credentials
	--Check users directory for Username
	filename = "/.user/." .. username
	if fs.exists(filename) then
			
		userfile = io.open(filename, "r")
				
		print ("Password?")
				
		password = read()
				
				
		if password == userfile:read() then --Parse file for Password and verify
			-- User is verified with correct password
			verifiedUser = username
			userLoggedIn = true
			userCredentials = userfile:read()
				
		else --User enterd wrong password
			print ("You, sir, FAIL.")
			sleep(5)
			exit
		end				
				
				
	else
				
		print ("Username does not exist, would you like to create it?")
				
		option=read()
				
		if option == yes then			
			createNewUser(username)
		else exit
		end
				
		exit
	end
end			
	--Set userLoggedIn=true

-- User is logged in, no need to do anything.





-- Create new user
function createNewUser(un)

		userfile = io.open(filename, "w")
	
	--prompt for password
		print ("New Password?")
		pwd1 = read()
	--verify password
		print ("Verify Password")
		pwd2 = read()
		if not pwd1==pwd2 then
			print ("You didn't type the same thing twice, you FAIL!")
			sleep(5)
			exit
		else
	--write password to file and end
			userfile:write(pwd1)
			print ("User created, please log in again.")
			sleep(5)
			exit
		end
		
	--return to login screen
end
