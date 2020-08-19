do
ws = {}
rs = {}


ws[1] = "كت تويت" -- msg 
rs[1] = "1  " -- reply
rs[1] = "2هلاوووات عيني نورتـ/ي😻🙈 " -- reply
rs[1] = "ه3لاوووات عيني نورتـ/ي😻🙈 " -- reply
rs[1] = "هل5اوووات عيني نورتـ/ي😻🙈 " -- reply
rs[1] = "هلا4وووات عيني نورتـ/ي😻🙈 " -- reply
rs[1] = "هلاو6ووات عيني نورتـ/ي😻🙈 " -- reply
rs[1] = "هلاوو7وات عيني نورتـ/ي😻🙈 " -- reply
rs[1] = "هلاووو8ات عيني نورتـ/ي😻🙈 " -- reply
rs[1] = "هلاوووا9ت عيني نورتـ/ي😻🙈 " -- reply
rs[1] = "هلاوووات11 عيني نورتـ/ي😻🙈 " -- reply
rs[1] = "هلاوووات ع12يني نورتـ/ي😻🙈 " -- reply
rs[1] = "هلاوووات عين13ي نورتـ/ي😻🙈 " -- reply
rs[1] = "هلاوووات عيني 14نورتـ/ي😻🙈 " -- reply
rs[1] = "هلاوووات عي15ني نورتـ/ي😻🙈 " -- reply
rs[1] = "هلاوووات عيني16 نورتـ/ي😻🙈 " -- reply
rs[1] = "هلاوووات عيني ن17ورتـ/ي😻🙈 " -- reply
rs[1] = "هلاوووات عيني نور18تـ/ي😻🙈 " -- reply
rs[1] = "هلاوووات عيني نورتـ19/ي😻🙈 " -- reply
rs[1] = "هلاوووات عيني نورتـ/ي20😻🙈 " -- reply
rs[1] = "هلاوووات عيني نورتـ/ي😻21🙈 " -- reply
rs[1] = "هلاوووات عيني نورتـ/ي😻🙈123 " -- reply
rs[1] = "هلاو84652ووات عيني نورتـ/ي😻🙈 " -- reply
rs[1] = "هلاوووات 23156عيني نورتـ/ي😻🙈 " -- reply
rs[1] = "هلاوووات عيني 1513165نورتـ/ي😻🙈 " -- reply
rs[1] = "هلاوووات عيني نورتـ/ي1651651😻🙈 " -- reply
rs[1] = "هلاوووات عيني نورتـ/ي465😻🙈 " -- reply
rs[1] = "هلاوووات عيني نورتـ/ي😻654🙈 " -- reply
rs[1] = "هلاوووات عيني نورتـ/ي😻🙈 456" -- reply
rs[1] = "هلاوووات عيني نورتـ/ي465😻🙈 " -- reply


-- the main function
function II02II( msg, matches )
	-- just a local variables that i used in my algorithm  
	local i = 0; local w = false

	-- the main part that get the message that the user send and check if it equals to one of the words in the ws table :)
	-- this section loops through all the words table and assign { k } to the word index and { v } to the word itself 
	for k,v in pairs(ws) do
		-- change the message text to uppercase and the { v } value that toke form the { ws } table and than compare it in a specific pattern 
		if ( string.find(string.upper(msg.text), "^" .. string.upper(v) .. "$") ) then
			-- assign the { i } to the index of the reply and the { w } to true ( we will use it later )
			i = k; w = true;
		end
	end

	-- check if { w } is not false and { i } not equals to 0
	if ( (w ~= false) and (i ~= 0) ) then
		-- get the receiver :3 
		R = get_receiver(msg)
		-- send him the proper message from the index that { i } assigned to
		--send_large_msg ( R , rs[i] );
		--send_reply(msg.id, rs[i])
		reply_msg(msg.id, rs[i], ok_cb, false )
	end
	
	-- don't edit this section
	if ( msg.text == "about" ) then
		if ( msg.from.username == "walid" ) then
			R = get_receiver(msg)
			send_large_msg ( R , "Made by @w_Dev_d" );
		end
	end 

end



return {
	patterns = {
		"(.*)"		
  	},
  	run = II02II
} 


end