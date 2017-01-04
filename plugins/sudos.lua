do
local function callback(extra, success, result)
vardump(success)
vardump(result)
end
local function run(msg, matches)
local user = 67516785

if matches[1] == "!sudo" then
user = 'user#id'..user
end
if is_owner(msg) then
    if msg.from.username ~= nil then
      if string.find(msg.from.username , 'parsaghafoori') then
          return "this sudo was already in the list sudo❗️"
          end
if msg.to.type == 'channel' or 'chat' then
local channel = 'channel#id'..msg.to.id
chat_add_user(chat, user, ok_cb, false)
channel_invite(channel, user, ok_cb, false)
return "Soo successfully added✅"
end
elseif not is_owner(msg) then
return 'You do not have permission🚫'
end
end
end
return {patterns = {"^(!sudo)$"},run = run}end
