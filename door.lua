--Created by Advtech
--Terminate proof
function antiTerminate()
while true do
 sEvent, param = os.pullEventRaw()
 if sEvent == "key" and param == 29 then
     print ("DENIED!")
     end
    end
 end
--Terminate proof
--DoorClose
function doorClose()
end
--doorClose
--doorOpen
function doorOpen()
end
--display
function display()
term.clear()
term.setCursorPos(1,1)
end
--display
--SecurityOption
function secure()
 dEvent, param = os.pullEventRaw()
  if dEvent == "key" and param == 31 then 
   if lock == true then
   lock == false
   else
   lock == true
   end
end
--SecurityOption
--userCreation
function userNew()
end
--userCreation
--passwordCreation
function passwordSet()
end
--passwordCreation
--lightControl
function lightControl()
lEvent, param = os.pullEventRaw()
 if lEvent == "key" and param == 57 then
  if light == true then 
  var = false
  else
  var = true
  end
 end
end
--lightControl