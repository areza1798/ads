--Typing.lua By @anti_spam_group
function solid(msg, matches)
local receiver = get_receiver(msg)
local hash = 'typing:'..receiver
     if matches[1] == 'typing' and is_sudo(msg) then
--Enable Typing
     if matches[2] == 'on' then
    redis:del(hash)
   return 'Mode "is typing..." has been successfully activated!✅'
--Disable Typing
     elseif matches[2] == 'off' then
    redis:set(hash, true)
   return 'Mode "is typing..." by successfully deactivated!⛔️'
--Typing Status
      elseif matches[2] == 'status' then
      if not redis:get(hash) then
   return 'Typing is enable✅'
       else
   return 'Typing is disable⛔️'
         end
      end
   end
      if not redis:get(hash) then
send_typing(get_receiver(msg), ok_cb, false)
   end
end
return { 
patterns = {
"^[!/#](typing) (.*)$",
"(.*)",
},
run = solid
}
--By @anti_spam_group
