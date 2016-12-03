do
 function run(msg, matches)
 
 local fuse = '📌نظر جدید⚠️\n\n👤 نام کاربر : ' .. msg.from.print_name .. '\n\n👤 شماره کاربر : ' .. msg.from.phone ..'\n\n👤 لینک کاربر : telegram.me/' .. msg.from.username ..'\n\n👤 نام کاربری : @' .. msg.from.username ..'\n\n👤 کد کاربر : ' .. msg.from.id ..'\n\n👤 نام گروه : ' .. msg.to.print_name ..'\n\n👤 کد گروه : '..msg.to.id.. '\n\n📝 کد پیام : ' .. msg.id .. '\n\n📝 نوع پیام : ' .. msg.text .. '\n\n📝 متن ارسالی:\n\n' .. matches[1] 
 local fuses = '!printf user#id' .. msg.from.id
 
 
   local text = matches[1]
   local user = "user#id"..67516785   --like 
   
  local sends = send_msg(user, fuse, ok_cb, false)
  return '✅نظر شما به سودو ارسال شد\n\nایدی شما : ['..msg.from.id..'] \n\n channel : @anti_spam_group'
 
 end
 end
 return {
  
  description = "Emergency Messages",
 
  usage = "Emergency message",
  patterns = {
  "^feed (.*)$"
 
  },
  run = run
 }
