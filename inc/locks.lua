--[[

]]
---------------Lock ------------------- 
function unlock_waring(msg)
if not msg.Admin then return "**هذا الامر يخص {مساعدين المدير} فقط ." end
if redis:get(max..'lock_woring'..msg.chat_id_) then 
return "**أرحب عزيزي "..msg.TheRankCmd.." \n**التحذير مفعل مسبقاً ." 
else redis:set(max..'lock_woring'..msg.chat_id_,true)
return "**أرحب عزيزي "..msg.TheRankCmd.."\nتم تفعيل التحذير ." 
end
end
 
function lock_waring(msg)
if not msg.Admin then return "**هذا الامر يخص {مساعدين المدير} فقط ." end
if not redis:get(max..'lock_woring'..msg.chat_id_) then 
return "**أرحب عزيزي "..msg.TheRankCmd.."\n**التحذير بالتأكيد معطل ." 
else
redis:del(max..'lock_woring'..msg.chat_id_) 
return "**أرحب عزيزي "..msg.TheRankCmd.."\n**تم تعطيل التحذير ." 
end 
end

function lock_ID(msg)
if not msg.Admin then return "**هذا الامر يخص {مساعدين المدير} فقط ." end
if not redis:get(max..'lock_id'..msg.chat_id_) then 
return "**أرحب عزيزي "..msg.TheRankCmd.."\n**الايدي بالتأكيد معطل ." 
else
redis:del(max..'lock_id'..msg.chat_id_) 
return "**أرحب عزيزي "..msg.TheRankCmd.."\n**تم تعطيل امر الايدي ." 
end 
end

function unlock_ID(msg)
if not msg.Admin then return "**هذا الامر يخص {مساعدين المدير} فقط ." end
if redis:get(max..'lock_id'..msg.chat_id_) then 
return "**أرحب عزيزي "..msg.TheRankCmd.."\n**امر الايدي مفعل بالفعل ." 
else 
redis:set(max..'lock_id'..msg.chat_id_,true)  
return "**أرحب عزيزي "..msg.TheRankCmd.."\n**تم تفعيل امر الايدي ." 
end 
end

function unlock_Welcome(msg)
if not msg.Admin then return "**هذا الامر يخص {مساعدين المدير} فقط ." end
if redis:get(max..'welcome:get'..msg.chat_id_) then 
return "**أرحب عزيزي "..msg.TheRankCmd.."\n**الترحيب مفعل  مسبقاً ." 
else redis:set(max..'welcome:get'..msg.chat_id_,true)  
return "**أرحب عزيزي "..msg.TheRankCmd.."\n**تم تفعيل الترحيب ." 
end 
end

function lock_Welcome(msg)
if not msg.Admin then return "**هذا الامر يخص {مساعدين المدير} فقط ." end
if not redis:get(max..'welcome:get'..msg.chat_id_) then 
return "**أرحب عزيزي "..msg.TheRankCmd.."\n**الترحيب بالتأكيد معطل ." 
else
redis:del(max..'welcome:get'..msg.chat_id_) 
return "**أرحب عزيزي "..msg.TheRankCmd.."\n**تم تعطيل الترحيب ." 
end 
end

function lock_All(msg)
if not msg.Director then return "هذا الامر يخص {المدراء فقط} فقط  \n" end
redis:mset(
max..'lock_username'..msg.chat_id_,true,
max..'mute_gif'..msg.chat_id_,true,
max..'mute_photo'..msg.chat_id_,true,
max..'mute_audio'..msg.chat_id_,true,
max..'mute_voice'..msg.chat_id_,true,
max..'mute_sticker'..msg.chat_id_,true,
max..'mute_forward'..msg.chat_id_,true,
max..'mute_contact'..msg.chat_id_,true,
max..'mute_location'..msg.chat_id_,true,
max..'mute_document'..msg.chat_id_,true,
max..'lock_link'..msg.chat_id_,true,
max..'lock_tag'..msg.chat_id_,true,
max..'lock_edit'..msg.chat_id_,true,
max..'lock_spam'..msg.chat_id_,true,
max..'lock_bots'..msg.chat_id_,true,
max..'lock_webpage'..msg.chat_id_,true,
max..'mute_video'..msg.chat_id_,true,
max..'mute_inline'..msg.chat_id_,true
)
return "أرحب عزيزي "..msg.TheRankCmd.."\nتــــم قفل الكل  \n✓"
end

function Unlock_All(msg)
if not msg.Director then return "هذا الامر يخص {المدراء فقط} فقط  \n" end
redis:del(
max..'lock_username'..msg.chat_id_,
max..'mute_gif'..msg.chat_id_,
max..'mute_photo'..msg.chat_id_,
max..'mute_audio'..msg.chat_id_,
max..'mute_voice'..msg.chat_id_,
max..'mute_sticker'..msg.chat_id_,
max..'mute_forward'..msg.chat_id_,
max..'mute_contact'..msg.chat_id_,
max..'mute_location'..msg.chat_id_,
max..'mute_document'..msg.chat_id_,
max..'lock_link'..msg.chat_id_,
max..'lock_tag'..msg.chat_id_,
max..'lock_edit'..msg.chat_id_,
max..'lock_spam'..msg.chat_id_,
max..'lock_bots'..msg.chat_id_,
max..'lock_webpage'..msg.chat_id_,
max..'mute_video'..msg.chat_id_,
max..':tqeed_video:'..msg.chat_id_,
max..':tqeed_photo:'..msg.chat_id_,
max..':tqeed_gif:'..msg.chat_id_,
max..':tqeed_fwd:'..msg.chat_id_,
max..':tqeed_link:'..msg.chat_id_,
max..'mute_inline'..msg.chat_id_
)
return "أرحب عزيزي "..msg.TheRankCmd.."\nتــــم فتح الكل  \n✓"
end

function lock_Media(msg)
if not msg.Director then return "هذا الامر يخص {المدراء فقط} فقط  \n" end
redis:mset(
max..'mute_gif'..msg.chat_id_,true,
max..'mute_photo'..msg.chat_id_,true,
max..'mute_audio'..msg.chat_id_,true,
max..'mute_voice'..msg.chat_id_,true,
max..'mute_sticker'..msg.chat_id_,true,
max..'mute_video'..msg.chat_id_,true
)
return "أرحب عزيزي "..msg.TheRankCmd.."\n~ تــــم قفل الوسائط  \n✓"
end

function Unlock_Media(msg)
if not msg.Director then return "هذا الامر يخص {المدراء فقط} فقط  \n" end
redis:del(
max..'mute_gif'..msg.chat_id_,
max..'mute_photo'..msg.chat_id_,
max..'mute_audio'..msg.chat_id_,
max..'mute_voice'..msg.chat_id_,
max..'mute_sticker'..msg.chat_id_,
max..'mute_video'..msg.chat_id_
)
return "أرحب عزيزي "..msg.TheRankCmd.."\n~ تــــم فتح الوسائط  \n✓"
end

function tqeed_photo(msg)
if not msg.Director then return "هذا الامر يخص {المدراء فقط} فقط  \n" end
if redis:get(max..':tqeed_photo:'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتقييد بالصور بالتأكيد تــــم قفله \n\n ✅'
else
redis:del(max..'mute_photo'..msg.chat_id_)
redis:set(max..':tqeed_photo:'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الصور بالتقييد  \n\n ✅'
end
end

function fktqeed_photo(msg)
if not msg.Director then return "هذا الامر يخص {المدراء فقط} فقط  \n" end
if not redis:get(max..':tqeed_photo:'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتقييد بالصور بالتأكيد تــــم فتحه \n\n ✅'
else 
redis:del(max..':tqeed_photo:'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الصور بالتقييد \n\n ✅'
end
end

---------------Lock -------------------
function tqeed_video(msg)
if not msg.Director then return "هذا الامر يخص {المدراء فقط} فقط  \n" end
if redis:get(max..':tqeed_video:'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتقييد بالفيديو بالتأكيد تــــم قفله \n\n ✅'
else
redis:del(max..':tqeed_video:'..msg.chat_id_)
redis:set(max..':tqeed_video:'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الفيديو بالتقييد  \n\n ✅'
end
end

function fktqeed_video(msg)
if not msg.Director then return "هذا الامر يخص {المدراء فقط} فقط  \n" end
if not redis:get(max..':tqeed_video:'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتقييد بالفيديو بالتأكيد تــــم فتحه \n\n ✅'
else 
redis:del(max..':tqeed_video:'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الفيديو بالتقييد \n\n ✅'
end
end

---------------Lock -------------------
function tqeed_gif(msg)
if not msg.Director then return "هذا الامر يخص {المدراء فقط} فقط  \n" end
if redis:get(max..':tqeed_gif:'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتقييد المتحركه بالتأكيد تــــم قفله \n\n ✅'
else
redis:del(max..'mute_gif'..msg.chat_id_)
redis:set(max..':tqeed_gif:'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل المتحركه بالتقييد  \n\n ✅'
end
end

function fktqeed_gif(msg)
if not msg.Director then return "هذا الامر يخص {المدراء فقط} فقط  \n" end
if not redis:get(max..':tqeed_gif:'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتقييد المتحركه بالتأكيد تــــم فتحه \n\n ✅'
else 
redis:del(max..':tqeed_gif:'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح المتحركه بالتقييد \n\n ✅'
end
end

---------------Lock -------------------
function tqeed_fwd(msg)
if not msg.Director then return "هذا الامر يخص {المدراء فقط} فقط  \n" end
if redis:get(max..':tqeed_fwd:'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتقييد بالتوجيه بالتأكيد تــــم قفله \n\n ✅'
else
redis:del(max..'mute_forward'..msg.chat_id_)
redis:set(max..':tqeed_fwd:'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل التوجيه بالتقييد  \n\n ✅'
end
end

function fktqeed_fwd(msg)
if not msg.Director then return "هذا الامر يخص {المدراء فقط} فقط  \n" end
if not redis:get(max..':tqeed_fwd:'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتقييد التوجيه بالتأكيد تــــم فتحه \n\n ✅'
else 
redis:del(max..':tqeed_fwd:'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح التوجيه بالتقييد \n\n ✅'
end
end
 
---------------Lock -------------------
function tqeed_link(msg)
if not msg.Director then return "هذا الامر يخص {المدراء فقط} فقط  \n" end
if redis:get(max..':tqeed_link:'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتقييد بالروابط بالتأكيد تــــم قفله \n\n ✅'
else
redis:set(max..':tqeed_link:'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الروابط بالتقييد  \n\n ✅'
end
end

function fktqeed_link(msg)
if not msg.Director then return "هذا الامر يخص {المدراء فقط} فقط  \n" end
if not redis:get(max..':tqeed_link:'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتقييد بالروابط بالتأكيد تــــم فتحه \n\n ✅'
else 
redis:del(max..':tqeed_link:'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الروابط بالتقييد \n\n ✅'
end
end

---------------Lock -------------------
function tqeed_photo(msg)
if not msg.Director then return "هذا الامر يخص {المدراء فقط} فقط  \n" end
if redis:get(max..':tqeed_photo:'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتقييد بالصور بالتأكيد تــــم قفله \n\n ✅'
else
redis:set(max..':tqeed_photo:'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الصور بالتقييد  \n\n ✅'
end
end

function fktqeed_photo(msg)
if not msg.Director then return "هذا الامر يخص {المدراء فقط} فقط  \n" end
if not redis:get(max..':tqeed_photo:'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتقييد بالصور بالتأكيد تــــم فتحه \n\n ✅'
else 
redis:del(max..':tqeed_photo:'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الصور بالتقييد \n\n ✅'
end
end
---------------Lock twasel-------------------
function lock_twasel(msg)
if not msg.SudoBase then return "هذا الامر يخص Mester فقط  \n" end
if redis:get(max..'lock_twasel') then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتواصل بالتاكيد تــــم تعطيله \n\n ✅'
else
redis:set(max..'lock_twasel',true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم تعطيل التواصل  \n\n ✅'
end
end

function unlock_twasel(msg)
if not msg.SudoBase then return "هذا الامر يخص Mester فقط  \n" end
if not redis:get(max..'lock_twasel') then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتواصل بالتاكيد تــــم تفعيله \n\n ✅'
else 
redis:del(max..'lock_twasel')
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم تفعيل التواصل \n\n ✅'
end
end

---------------Lock bro-------------------
function lock_brod(msg)
if not msg.SudoBase then return "هذا الامر يخص Mester فقط  \n" end
if not redis:get(max..'lock_brod') then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nاذاعه المطورين بالتاكيد تــــم تعطيله \n\n ✅'
else
redis:del(max..'lock_brod')
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم تعطيل اذاعه Mester   \n\n ✅'
end
end
function unlock_brod(msg)
if not msg.SudoBase then return "هذا الامر يخص المطور فقط  " end
if redis:get(max..'lock_brod') then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nاذاعه المطورين بالتاكيد تــــم تفعيله \n\n ✅'
else 
redis:set(max..'lock_brod',true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم تفعيل اذاعه المطورين  \n\n ✅'
end
end

---------------Lock replay-------------------
function lock_replay(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'replay'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالردود بالتاكيد تــــم تعطيله \n\n ✅'
else
redis:del(max..'replay'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم تعطيل الردود  \n\n ✅'
end
end

function unlock_replay(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'replay'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالردود بالتاكيد تــــم تفعيله \n\n ✅'
else 
redis:set(max..'replay'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم تفعيل الردود  \n\n ✅'
end
end

---------------Lock bot service-------------------
function lock_service(msg)
if not msg.SudoBase then return "هذا الامر يخص Mester فقط  \n" end
if not redis:get(max..'lock_service') then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم بالتاكيد تعطيل نظام البوت خدمي \n\n ✅'
else
redis:del(max..'lock_service')
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم  تعطيل نظام البوت خدمي \n\n ✅'
end
end

function unlock_service(msg)
if not msg.SudoBase then return "هذا الامر يخص Mester فقط  \n" end
if redis:get(max..'lock_service') then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم بالتأكيد تفعيل نظام البوت خدمي \n\n ✅'
else 
redis:set(max..'lock_service',true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم تفعيل نظام البوت خدمي \n✓\n~اصبح البوت الان بامكان اي شخص\n~ان يستخدم البوت للتفعيل'
end
end

---------------Lock Link-------------------
function lock_link(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'lock_link'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالروابط بالتأكيد تــــم قفلها \n\n ✅'
else
redis:set(max..'lock_link'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الروابط \n\n ✅'
end
end

function unlock_link(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'lock_link'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالروابط بالتأكيد تــــم فتحها \n\n ✅'
else 
redis:del(max..'lock_link'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الروابط \n\n ✅'
end
end

---------------Lock Tag-------------------
function lock_tag(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'lock_tag'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتاك بالتأكيد تــــم قفله \n\n ✅'
else
redis:set(max..'lock_tag'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل التاك (#) \n\n ✅'
end
end

function unlock_tag(msg)

if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'lock_tag'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتاك بالتأكيد تــــم فتحه \n\n ✅'
else 
redis:del(max..'lock_tag'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح التاك  \n\n ✅'
end
end
---------------Lock UserName-------------------
function lock_username(msg) 

if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end

if redis:get(max..'lock_username'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالمعرفات بالتأكيد تــــم قفله \n\n ✅'
else
redis:set(max..'lock_username'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل المعرفات \n\n ✅'
end
end

function unlock_username(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'lock_username'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nآلمـعرفآت بآلتآگيد تــــم فتحهآ  \n\n ✅'
else 
redis:del(max..'lock_username'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح آلمـعرفآت \n\n ✅'
end
end

---------------Lock Edit-------------------
function lock_edit(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'lock_edit'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتعديل بالتأكيد تــــم قفله \n\n ✅'
else
redis:set(max..'lock_edit'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل التعديل \n\n ✅'
end
end

function unlock_edit(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'lock_edit'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتعديل بالتأكيد تــــم فتحه \n\n ✅'
else 
redis:del(max..'lock_edit'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح التعديل \n\n ✅'
end
end

---------------Lock spam-------------------
function lock_spam(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if   redis:get(max..'lock_spam'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالكلايش بالتأكيد تــــم قفلها \n\n ✅'
else
redis:set(max..'lock_spam'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الكلايش \n\n ✅'
end
end

function unlock_spam(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'lock_spam'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالكلايش بالتأكيد تــــم فتحها \n\n ✅'
else 
redis:del(max..'lock_spam'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الكلايش \n\n ✅'
end
end

---------------Lock Flood-------------------
function lock_flood(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'lock_flood'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتكرار بالتأكيد تــــم قفله \n\n ✅'
else
redis:set(max..'lock_flood'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل التكرار \n\n ✅'
end
end

function unlock_flood(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'lock_flood'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتكرار بالتأكيد تــــم فتحه \n\n ✅'
else 
redis:del(max..'lock_flood'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح التكرار \n\n ✅'
end
end

---------------Lock Bots-------------------
function lock_bots(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'lock_bots'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالبوتات بالتأكيد تــــم قفلها \n\n ✅'
else
redis:set(max..'lock_bots'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل البوتات \n\n ✅'
end
end

function unlock_bots(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'lock_bots'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالبوتات بالتأكيد تــــم فتحها \n\n ✅'
else 
redis:del(max..'lock_bots_by_kick'..msg.chat_id_)
redis:del(max..'lock_bots'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح البوتات \n\n ✅'
end
end

---------------Lock Join-------------------
function lock_join(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'lock_join'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالاضافه بالتاكيد تــــم قفلها \n\n ✅'
else
redis:set(max..'lock_join'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الاضافه \n\n ✅'
end
end

function unlock_join(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'lock_join'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالاضافه بالتاكيد تــــم فتحها \n\n ✅'
else 
redis:del(max..'lock_join'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الاضافه \n\n ✅'
end
end

---------------Lock Markdown-------------------
function lock_markdown(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'lock_markdown'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالماركدوان بالتاكيد تــــم قفله \n\n ✅'
else
redis:set(max..'lock_markdown'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الماركدوان \n\n ✅'
end
end

function unlock_markdown(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'lock_markdown'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالماركدوان بالتأكيد تــــم فتحه \n\n ✅'
else 
redis:del(max..'lock_markdown'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الماركدوان \n\n ✅'
end
end

---------------Lock Webpage-------------------
function lock_webpage(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'lock_webpage'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالويب بالتأكيد تــــم قفله \n\n ✅'
else
redis:set(max..'lock_webpage'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الويب \n\n ✅'
end
end

function unlock_webpage(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'lock_webpage'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالويب بالتأكيد تــــم فتحه \n\n ✅'
else 
redis:del(max..'lock_webpage'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الويب \n\n ✅'
end
end
---------------Mute Gif-------------------
function mute_gif(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'mute_gif'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالمتحركه بالتأكيد تــــم قفلها \n\n ✅'
else
redis:set(max..'mute_gif'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل المتحركه \n\n ✅'
end
end

function unmute_gif(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'mute_gif'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالمتحركه بالتأكيد تــــم فتحها \n\n ✅'
else 
redis:del(max..'mute_gif'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح المتحركه \n\n ✅'
end
end
---------------Mute Game-------------------
function mute_game(msg) 
if not msg.Admin then return " │ هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'mute_game'..msg.chat_id_) then
return ' │ أرحب عزيزي '..msg.TheRankCmd..'\n │ الالعاب بالتأكيد تــم قفلها \n\n ✅'
else
redis:set('mute_game'..msg.chat_id_,true)
return ' │ أرحب عزيزي '..msg.TheRankCmd..'\n │ تــم قفل الالعاب \n\n ✅'
end
end

function unmute_game(msg)
if not msg.Admin then return " │ هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'mute_game'..msg.chat_id_) then
return ' │ أرحب عزيزي '..msg.TheRankCmd..'\n │ الألعاب بالتأكيد تــم فتحها \n\n ✅'
else 
redis:del(max..'mute_game'..msg.chat_id_)
return ' │ أرحب عزيزي '..msg.TheRankCmd..'\n │ تــم فتح الألعاب \n\n ✅'
end
end
---------------Mute Inline-------------------
function mute_inline(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'mute_inline'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالانلاين بالتأكيد تــــم قفله \n\n ✅'
else
redis:set(max..'mute_inline'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الانلاين \n\n ✅'
end
end

function unmute_inline(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'mute_inline'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالانلاين بالتأكيد تــــم فتحه \n\n ✅'
else 
redis:del(max..'mute_inline'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الانلاين \n\n ✅'
end
end
---------------Mute Text-------------------
function mute_text(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'mute_text'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالدرشه بالتأكيد تــــم قفلها \n\n ✅'
else
redis:set(max..'mute_text'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الدردشه \n\n ✅'
end
end

function unmute_text(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'mute_text'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالدردشه بالتأكيد تــــم فتحها \n\n ✅'
else 
redis:del(max..'mute_text'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الدردشه \n\n ✅'
end
end
---------------Mute photo-------------------
function mute_photo(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'mute_photo'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالصور بالتأكيد تــــم قفلها \n\n ✅'
else
redis:set(max..'mute_photo'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الصور \n\n ✅'
end
end

function unmute_photo(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'mute_photo'..msg.chat_id_)then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالصور بالتأكيد تــــم فتحها \n\n ✅'
else 
redis:del(max..'mute_photo'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الصور \n\n ✅'
end
end
---------------Mute Video-------------------
function mute_video(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'mute_video'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالفيديو بالتأكيد تــــم قفله \n\n ✅'
else
redis:set(max..'mute_video'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الفيديو \n\n ✅'
end
end

function unmute_video(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'mute_video'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالفيديو بتأكيد تــــم فتحه \n\n ✅'
else 
redis:del(max..'mute_video'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الفيديو \n\n ✅'
end
end
---------------Mute Audio-------------------
function mute_audio(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'mute_audio'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالبصمات بالتأكيد تــــم قفلها \n\n ✅'
else
redis:set(max..'mute_audio'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل البصمات \n\n ✅'
end
end

function unmute_audio(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'mute_audio'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالبصمات بالتأكيد تــــم فتحها \n\n ✅'
else 
redis:del(max..'mute_audio'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح البصمات \n\n ✅'
end
end
---------------Mute Voice-------------------
function mute_voice(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if   redis:get(max..'mute_voice'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالصوت بالتأكيد تــــم قفله \n\n ✅'
else
redis:set(max..'mute_voice'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الصوت \n\n ✅'
end
end

function unmute_voice(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'mute_voice'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالصوت بالتأكيد تــــم فتحه \n\n ✅'
else 
redis:del(max..'mute_voice'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الصوت \n\n ✅'
end
end
---------------Mute Sticker-------------------
function mute_sticker(msg) 

if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end

if   redis:get(max..'mute_sticker'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالملصقات بالتأكيد تــــم قفلها \n\n ✅'
else
redis:set(max..'mute_sticker'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الملصقات \n\n ✅'
end
end

function unmute_sticker(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'mute_sticker'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالملصقات بالتأكيد تــــم فتحها \n\n ✅'
else 
redis:del(max..'mute_sticker'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الملصقات \n\n ✅'
end
end
---------------Mute Contact-------------------
function mute_contact(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'mute_contact'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nجهات الاتصال بالتأكيد تــــم قفلها \n\n ✅'
else
redis:set(max..'mute_contact'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل جهات الاتصال \n\n ✅'
end
end

function unmute_contact(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'mute_contact'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nجهات الاتصال بالتأكيد تــــم فتحها \n\n ✅'
else 
redis:del(max..'mute_contact'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح جهات الاتصال \n\n ✅'
end
end
---------------Mute Forward-------------------
function mute_forward(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'mute_forward'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتوجيه بالتأكيد تــــم قفلها \n\n ✅'
else
redis:set(max..'mute_forward'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل التوجيه \n\n ✅'
end
end

function unmute_forward(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'mute_forward'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتوجيه بالتأكيد تــــم فتحها \n\n ✅'
else 
redis:del(max..'mute_forward'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح التوجيه \n\n ✅'
end
end
---------------Mute Location-------------------
function mute_location(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'mute_location'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالموقع بالتأكيد تــــم قفله \n\n ✅'
else
redis:set(max..'mute_location'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الموقع \n\n ✅'
end
end

function unmute_location(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'mute_location'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالموقع بالتأكيد تــــم فتحه \n\n ✅'
else 
redis:del(max..'mute_location'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الموقع \n\n ✅'
end
end
---------------Mute Document-------------------
function mute_document(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'mute_document'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالملفات بالتأكيد تــــم قفلها \n\n ✅'
else
redis:set(max..'mute_document'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الملفات \n\n ✅'
end
end

function unmute_document(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'mute_document'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالملفات بالتأكيد تــــم فتحها \n\n ✅'
else 
redis:del(max..'mute_document'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الملفات \n\n ✅'
end
end
---------------Mute TgService-------------------
function mute_tgservice(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'mute_tgservice'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالاشعارات بالتأكيد تــــم قفلها \n\n ✅'
else
redis:set(max..'mute_tgservice'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الاشعارات \n\n ✅'
end
end

function unmute_tgservice(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'mute_tgservice'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالاشعارات بالتأكيد تــــم فتحها \n\n ✅'
else 
redis:del(max..'mute_tgservice'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الاشعارات \n\n ✅'
end
end

---------------Mute Keyboard-------------------
function mute_keyboard(msg) 
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'mute_keyboard'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالكيبورد بالتأكيد تــــم قفله \n\n ✅'
else
redis:set(max..'mute_keyboard'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل الكيبورد \n\n ✅'
end
end

function unmute_keyboard(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'mute_keyboard'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالكيبورد بالتأكيد تــــم فتحه \n\n ✅'
else 
redis:del(max..'mute_keyboard'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح الكيبورد \n\n ✅'
end
end

---------------lock_bots_by_kick-------------------
function lock_bots_by_kick(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'lock_bots_by_kick'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالبوتات بالطرد بالتاكيد تــــم قفله \n\n ✅'
else
redis:set(max..'lock_bots'..msg.chat_id_,true)
redis:set(max..'lock_bots_by_kick'..msg.chat_id_,true)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم قفل البوتات بالطرد (مع طرد الاضافه) \n\n ✅'
end
end

function unlock_bots_by_kick(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'lock_bots_by_kick'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالبوتات بالطرد بالتاكيد مفتوحه \n\n ✅'
else 
redis:del(max..'lock_bots_by_kick'..msg.chat_id_)
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتــــم فتح البوتات بالطرد  \n\n ✅'
end
end
---------------locks pin-------------------
function lock_pin(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if redis:get(max..'lock_pin'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتثبيت بالفعل مقفل \n\n ✅'
else
redis:set(max..'lock_pin'..msg.chat_id_,true) 
return 'أرحب عزيزي '..msg.TheRankCmd..'\nتـم قفل التثبيت \n\n ✅'
end
end

function unlock_pin(msg)
if not msg.Admin then return "هذا الامر يخص مساعدين المدير فقط وما فوق.  " end
if not redis:get(max..'lock_pin'..msg.chat_id_) then
return 'أرحب عزيزي '..msg.TheRankCmd..'\nالتثبيت بالفعل مفتوح \n\n ✅'
else 
redis:del(max..'lock_pin'..msg.chat_id_)
return '~ **أرحب عزيزي '..msg.TheRankCmd..'\n~ **تـم فتح التثبيت   \n\n ✅'
end
end
function Flterzhrfa(Name)
Name = tostring(Name)
Name = utf8.gsub(Name,'ﭛ','ي')	
Name = utf8.gsub(Name,'ﺥ','خ')	
Name = utf8.gsub(Name,'ڽ','ن')	
Name = utf8.gsub(Name,'ٽ','ث')	
Name = utf8.gsub(Name,'ڜ','ش')	
Name = utf8.gsub(Name,'ﺵ','ش')	
Name = utf8.gsub(Name,'ﭒ','ي')	
Name = utf8.gsub(Name,'ﮛ','ك')	
Name = utf8.gsub(Name,'ﻡ','م')	
Name = utf8.gsub(Name,'ټ','ت')	
Name = utf8.gsub(Name,'ڼ','ن')	
Name = utf8.gsub(Name,'ﺻ','ص')	
Name = utf8.gsub(Name,'ڝ','ص')	
Name = utf8.gsub(Name,'ﻢ','م')	
Name = utf8.gsub(Name,'ﮑ','ك')	
Name = utf8.gsub(Name,'ﺮ','ر')	
Name = utf8.gsub(Name,'ﺳ','س')	
Name = utf8.gsub(Name,'ٿ','ت')	
Name = utf8.gsub(Name,'ﺦ','خ')	
Name = utf8.gsub(Name,'ڞ','ض')	
Name = utf8.gsub(Name,'ﺢ','ح')	
Name = utf8.gsub(Name,'Ξ','')	
Name = utf8.gsub(Name,'ﺶ','ش')	
Name = utf8.gsub(Name,'ﻠ','ا')	
Name = utf8.gsub(Name,'ﻤ','م')	
Name = utf8.gsub(Name,'ﺾ','ض')	
Name = utf8.gsub(Name,'ﺺ','ص')	
Name = utf8.gsub(Name,'ھ','ه')	
Name = utf8.gsub(Name,'۾','م')	
Name = utf8.gsub(Name,'ﺴ','س')	
Name = utf8.gsub(Name,'ﺿ','ض')	
Name = utf8.gsub(Name,'ڟ','ظ')	
Name = utf8.gsub(Name,'ﻧ','ن')	
Name = utf8.gsub(Name,'ﺤ','ح')	
Name = utf8.gsub(Name,'ﺠ','ج')	
Name = utf8.gsub(Name,'ﺷ','ش')	
Name = utf8.gsub(Name,'ﭴ','ج')	
Name = utf8.gsub(Name,'ژ','ز')	
Name = utf8.gsub(Name,'ٹ','ت')	
Name = utf8.gsub(Name,'ع','ع')	
Name = utf8.gsub(Name,'ﺧ','خ')	
Name = utf8.gsub(Name,'ﺯ','ز')	
Name = utf8.gsub(Name,'ڙ','ز')	
Name = utf8.gsub(Name,'ﻦ','ن')	
Name = utf8.gsub(Name,'ٸ','ئ')	
Name = utf8.gsub(Name,'ﮂ','د')	
Name = utf8.gsub(Name,'ﮃ','د')	
Name = utf8.gsub(Name,'ﭵ','ج')	
Name = utf8.gsub(Name,'ڻ','ن')	
Name = utf8.gsub(Name,'ښ','س')	
Name = utf8.gsub(Name,'ٻ','ب')	
Name = utf8.gsub(Name,'ﯙ','و')	
Name = utf8.gsub(Name,'ﮫ','ه')	
Name = utf8.gsub(Name,'ﺸ','ش')	
Name = utf8.gsub(Name,'ﺹ','ص')	
Name = utf8.gsub(Name,'ں','ر')	
Name = utf8.gsub(Name,'ﻥ','ن')	
Name = utf8.gsub(Name,'ڛ','س')	
Name = utf8.gsub(Name,'غ','غ')	
Name = utf8.gsub(Name,'ٺ','ت')	
Name = utf8.gsub(Name,'ﭶ','ج')	
Name = utf8.gsub(Name,'ﭨ','')	
Name = utf8.gsub(Name,'ﻖ','ق')	
Name = utf8.gsub(Name,'ۄ','و')	
Name = utf8.gsub(Name,'ڄ','ج')	
Name = utf8.gsub(Name,'ڥ','ف')	
Name = utf8.gsub(Name,'ﮄ','ذ')	
Name = utf8.gsub(Name,'ﮅ','ذ')	
Name = utf8.gsub(Name,'ﮁ','ج')	
Name = utf8.gsub(Name,'ۅ','و')	
Name = utf8.gsub(Name,'څ','ج')	
Name = utf8.gsub(Name,'ﮋ','ز')	
Name = utf8.gsub(Name,'ﺟ','ج')	
Name = utf8.gsub(Name,'ﻣ','م')	
Name = utf8.gsub(Name,'ﻲ','ي')	
Name = utf8.gsub(Name,'ۆ','و')	
Name = utf8.gsub(Name,'ن','ن')	
Name = utf8.gsub(Name,'چ','خ')	
Name = utf8.gsub(Name,'ا','ا')	
Name = utf8.gsub(Name,'ﻟ','ل')	
Name = utf8.gsub(Name,'ﺣ','ح')	
Name = utf8.gsub(Name,'ﺲ','س')	
Name = utf8.gsub(Name,'ۇ','و')	
Name = utf8.gsub(Name,'ڇ','ج')	
Name = utf8.gsub(Name,'ﺰ','ز')	
Name = utf8.gsub(Name,'ﭪ','ف')	
Name = utf8.gsub(Name,'ڦ','ق')	
Name = utf8.gsub(Name,'ﭩ','')	
Name = utf8.gsub(Name,'ڀ','ب')	
Name = utf8.gsub(Name,'ۀ','ه')	
Name = utf8.gsub(Name,'ـ','')	
Name = utf8.gsub(Name,'ﭓ','ي')	
Name = utf8.gsub(Name,'ﻞ','ل')	
Name = utf8.gsub(Name,'ڡ','ف')	
Name = utf8.gsub(Name,'ء','ء')	
Name = utf8.gsub(Name,'ﻎ','غ')	
Name = utf8.gsub(Name,'ﺙ','ث')	
Name = utf8.gsub(Name,'ﺜ','ث')	
Name = utf8.gsub(Name,'ﻌ','ع')	
Name = utf8.gsub(Name,'ﺚ','ث')	
Name = utf8.gsub(Name,'ﺝ','ج')	
Name = utf8.gsub(Name,'ہ','')	
Name = utf8.gsub(Name,'ځ','ح')	
Name = utf8.gsub(Name,'ﮓ','ك')	
Name = utf8.gsub(Name,'ڠ','غ')	
Name = utf8.gsub(Name,'ﻔ','ف')	
Name = utf8.gsub(Name,'ﻙ','ك')	
Name = utf8.gsub(Name,'ﻜ','ك')	
Name = utf8.gsub(Name,'ﻝ','ل')	
Name = utf8.gsub(Name,'ﻚ','ك')	
Name = utf8.gsub(Name,'ڂ','خ')	
Name = utf8.gsub(Name,'ۂ','')	
Name = utf8.gsub(Name,'ﻕ','ق')	
Name = utf8.gsub(Name,'ڣ','ف')	
Name = utf8.gsub(Name,'ﺘ','ت')	
Name = utf8.gsub(Name,'ﻍ','غ')	
Name = utf8.gsub(Name,'ﻗ','ق')	
Name = utf8.gsub(Name,'ﭻ','ج')	
Name = utf8.gsub(Name,'ﮆ','ذ')	
Name = utf8.gsub(Name,'ﭳ','ج')	
Name = utf8.gsub(Name,'ۃ','ة')	
Name = utf8.gsub(Name,'ڃ','ج')	
Name = utf8.gsub(Name,'ﺞ','ج')	
Name = utf8.gsub(Name,'ڢ','ف')	
Name = utf8.gsub(Name,'ﻘ','ق')	
Name = utf8.gsub(Name,'ی','ى')	
Name = utf8.gsub(Name,'ﮭ','ه')	
Name = utf8.gsub(Name,'ﮧ','')	
Name = utf8.gsub(Name,'ڌ','ذ')	
Name = utf8.gsub(Name,'̭','')	
Name = utf8.gsub(Name,'ﭸ','ج')	
Name = utf8.gsub(Name,'ﭼ','ج')	
Name = utf8.gsub(Name,'ﮯ','')	
Name = utf8.gsub(Name,'ﭬ','ف')	
Name = utf8.gsub(Name,'ڭ','ك')	
Name = utf8.gsub(Name,'ﮉ','ذ')	
Name = utf8.gsub(Name,'ﭭ','ف')	
Name = utf8.gsub(Name,'ۍ','ى')	
Name = utf8.gsub(Name,'ڍ','د')	
Name = utf8.gsub(Name,'ﭧ','')	
Name = utf8.gsub(Name,'ﮊ','ز')	
Name = utf8.gsub(Name,'ﺒ','ب')	
Name = utf8.gsub(Name,'ﭯ','ف')	
Name = utf8.gsub(Name,'ﭽ','ج')	
Name = utf8.gsub(Name,'ﯾ','ي')	
Name = utf8.gsub(Name,'ڬ','ك')	
Name = utf8.gsub(Name,'ﻃ','ط')	
Name = utf8.gsub(Name,'ڎ','ذ')	
Name = utf8.gsub(Name,'ێ','ئ')	
Name = utf8.gsub(Name,'ﻑ','ف')	
Name = utf8.gsub(Name,'ﯼ','ى')	
Name = utf8.gsub(Name,'ﻒ','ف')	
Name = utf8.gsub(Name,'ﮈ','د')	
Name = utf8.gsub(Name,'ﮡ','')	
Name = utf8.gsub(Name,'گ','ك')	
Name = utf8.gsub(Name,'ﻉ','ع')	
Name = utf8.gsub(Name,'ڏ','ذ')	
Name = utf8.gsub(Name,'ﺖ','ت')	
Name = utf8.gsub(Name,'ﭹ','ج')	
Name = utf8.gsub(Name,'ﮬ','ه')	
Name = utf8.gsub(Name,'ڮ','ك')	
Name = utf8.gsub(Name,'ﭺ','ج')	
Name = utf8.gsub(Name,'ﭢ','ت')	
Name = utf8.gsub(Name,'ڈ','د')	
Name = utf8.gsub(Name,'ۈ','و')	
Name = utf8.gsub(Name,'ﭤ','ت')	
Name = utf8.gsub(Name,'ﭠ','ت')	
Name = utf8.gsub(Name,'ﮥ','ه')	
Name = utf8.gsub(Name,'ک','ك')	
Name = utf8.gsub(Name,'ﺑ','ب')	
Name = utf8.gsub(Name,'ۉ','و')	
Name = utf8.gsub(Name,'ډ','د')	
Name = utf8.gsub(Name,'ﺗ','ت')	
Name = utf8.gsub(Name,'ﭥ','ت')	
Name = utf8.gsub(Name,'ﯡ','و')	
Name = utf8.gsub(Name,'ڨ','ق')	
Name = utf8.gsub(Name,'ي','ي')	
Name = utf8.gsub(Name,'ڊ','د')	
Name = utf8.gsub(Name,'ۊ','و')	
Name = utf8.gsub(Name,'ﮮ','')	
Name = utf8.gsub(Name,'ﻋ','ع')	
Name = utf8.gsub(Name,'ﯠ','و')	
Name = utf8.gsub(Name,'ﻊ','ع')	
Name = utf8.gsub(Name,'ﮦ','ه')	
Name = utf8.gsub(Name,'ﮢ','')	
Name = utf8.gsub(Name,'ﻈ','ض')	
Name = utf8.gsub(Name,'ﯿ','ي')	
Name = utf8.gsub(Name,'ۋ','و')	
Name = utf8.gsub(Name,'ڋ','د')	
Name = utf8.gsub(Name,'ﭣ','ت')	
Name = utf8.gsub(Name,'ﮤ','ه')	
Name = utf8.gsub(Name,'ﭮ','ف')	
Name = utf8.gsub(Name,'ﭫ','ف')	
Name = utf8.gsub(Name,'ﯽ','ى')	
Name = utf8.gsub(Name,'ﭡ','ت')	
Name = utf8.gsub(Name,'ﭾ','ج')	
Name = utf8.gsub(Name,'ﭦ','')	
Name = utf8.gsub(Name,'ﻐ','غ')	
Name = utf8.gsub(Name,'ڵ','ل')	
Name = utf8.gsub(Name,'ٵ','ا')	
Name = utf8.gsub(Name,'ﮔ','ك')	
Name = utf8.gsub(Name,'ﭗ','ب')	
Name = utf8.gsub(Name,'ﮜ','ك')	
Name = utf8.gsub(Name,'ﭝ','ي')	
Name = utf8.gsub(Name,'ڔ','ر')	
Name = utf8.gsub(Name,'ﻆ','ظ')	
Name = utf8.gsub(Name,'ﮌ','ر')	
Name = utf8.gsub(Name,'ﻪ','ه')	
Name = utf8.gsub(Name,'ڴ','ك')	
Name = utf8.gsub(Name,'ە','ه')	
Name = utf8.gsub(Name,'ﮗ','ك')	
Name = utf8.gsub(Name,'ﮝ','ك')	
Name = utf8.gsub(Name,'ﮙ','ك')	
Name = utf8.gsub(Name,'ﺓ','ة')	
Name = utf8.gsub(Name,'ڕ','ر')	
Name = utf8.gsub(Name,'ﮚ','ك')	
Name = utf8.gsub(Name,'ﮕ','ك')	
Name = utf8.gsub(Name,'ط','ط')	
Name = utf8.gsub(Name,'ﺪ','د')	
Name = utf8.gsub(Name,'ڷ','ل')	
Name = utf8.gsub(Name,'ٷ','ؤ')	
Name = utf8.gsub(Name,'ﺩ','د')	
Name = utf8.gsub(Name,'ﮘ','ك')	
Name = utf8.gsub(Name,'ﻁ','ط')	
Name = utf8.gsub(Name,'ﯝ','ؤ')	
Name = utf8.gsub(Name,'ﮱ','')	
Name = utf8.gsub(Name,'ﯚ','و')	
Name = utf8.gsub(Name,'ﻂ','ط')	
Name = utf8.gsub(Name,'ﭞ','ت')	
Name = utf8.gsub(Name,'ږ','ر')	
Name = utf8.gsub(Name,'̷','')	
Name = utf8.gsub(Name,'ٶ','ؤ')	
Name = utf8.gsub(Name,'ڶ','ل')	
Name = utf8.gsub(Name,'ﭜ','ي')	
Name = utf8.gsub(Name,'ﮎ','ك')	
Name = utf8.gsub(Name,'ﭲ','ج')	
Name = utf8.gsub(Name,'ڗ','ز')	
Name = utf8.gsub(Name,'ﮞ','')	
Name = utf8.gsub(Name,'̶','')	
Name = utf8.gsub(Name,'ڱ','ك')	
Name = utf8.gsub(Name,'ٱ','ا')	
Name = utf8.gsub(Name,'ر','ر')	
Name = utf8.gsub(Name,'ﺭ','ر')	
Name = utf8.gsub(Name,'ﭙ','ب')	
Name = utf8.gsub(Name,'ﺔ','ة')	
Name = utf8.gsub(Name,'ﺽ','ض')	
Name = utf8.gsub(Name,'ڐ','ذ')	
Name = utf8.gsub(Name,'ې','ي')	
Name = utf8.gsub(Name,'ﺕ','ت')	
Name = utf8.gsub(Name,'ﮟ','')	
Name = utf8.gsub(Name,'ڰ','ك')	
Name = utf8.gsub(Name,'ﻄ','ط')	
Name = utf8.gsub(Name,'ﻩ','ه')	
Name = utf8.gsub(Name,'ﺛ','ث')	
Name = utf8.gsub(Name,'ﮏ','ك')	
Name = utf8.gsub(Name,'ۑ','ى')	
Name = utf8.gsub(Name,'ڑ','ر')	
Name = utf8.gsub(Name,'ﻇ','ظ')	
Name = utf8.gsub(Name,'ٳ','ا')	
Name = utf8.gsub(Name,'ﺡ','ح')	
Name = utf8.gsub(Name,'ڳ','ك')	
Name = utf8.gsub(Name,'ﮪ','ه')	
Name = utf8.gsub(Name,'ﻛ','ك')	
Name = utf8.gsub(Name,'ﺼ','ص')	
Name = utf8.gsub(Name,'ﻅ','ظ')	
Name = utf8.gsub(Name,'ﻬ','ه')	
Name = utf8.gsub(Name,'̐','')	
Name = utf8.gsub(Name,'ﺂ','ا')	
Name = utf8.gsub(Name,'͠','')	
Name = utf8.gsub(Name,'ﮠ','')	
Name = utf8.gsub(Name,'ﻰ','ى')	
Name = utf8.gsub(Name,'ﭿ','ج')	
Name = utf8.gsub(Name,'ﮀ','ج')	
Name = utf8.gsub(Name,'ﮇ','ذ')	
Name = utf8.gsub(Name,'ﮍ','ر')	
Name = utf8.gsub(Name,'ﮐ','ك')	
Name = utf8.gsub(Name,'ﭷ','ج')	
Name = utf8.gsub(Name,'ﮰ','')	
Name = utf8.gsub(Name,'ے','')	
Name = utf8.gsub(Name,'پ','ب')	
Name = utf8.gsub(Name,'ﻨ','ن')	
Name = utf8.gsub(Name,'Ζ','z')	
Name = utf8.gsub(Name,'ﭚ','ب')	
Name = utf8.gsub(Name,'ﭘ','ب')	
Name = utf8.gsub(Name,'ٲ','ا')	
Name = utf8.gsub(Name,'ڲ','ك')	
Name = utf8.gsub(Name,'ﭖ','ب')	
Name = utf8.gsub(Name,'ﭕ','ي')	
Name = utf8.gsub(Name,'ﭔ','ي')	
Name = utf8.gsub(Name,'ﻏ','غ')	
Name = utf8.gsub(Name,'ﻀ','ض')	
Name = utf8.gsub(Name,'ګ','ك')	
Name = utf8.gsub(Name,'ڪ','ك')	
Name = utf8.gsub(Name,'ڧ','ف')	
Name = utf8.gsub(Name,'ڤ','ق')	
Name = utf8.gsub(Name,'ﮖ','ك')	
Name = utf8.gsub(Name,'ﺬ','ذ')	
Name = utf8.gsub(Name,'ڒ','ر')	
Name = utf8.gsub(Name,'ﺨ','خ')	
Name = utf8.gsub(Name,'ﭱ','ف')	
Name = utf8.gsub(Name,'ﻓ','ف')	
Name = utf8.gsub(Name,'ﺱ','س')	
Name = utf8.gsub(Name,'ﺫ','ذ')	
Name = utf8.gsub(Name,'ﺐ','ب')	
Name = utf8.gsub(Name,'ﮩ','')	
Name = utf8.gsub(Name,'ﮨ','')	
Name = utf8.gsub(Name,'ﮣ','')	
Name = utf8.gsub(Name,'ﭰ','ف')	
Name = utf8.gsub(Name,'ۓ','')	
Name = utf8.gsub(Name,'ړ','ر')	
return Name
end


function FlterEmoje(Name)
Name = tostring(Name)
Name = utf8.gsub(Name,"[🤚🔕♠🤗😇💂🌶🤣🚹⛸⚠😅🍕🍛🧝🌿💛#😕🧞*1032547🥌98🎡🎋🏼🎰🤑🚮☠🥜⃣🛌🌙🚙👏🛍💑⛳🏌🍢👲🔡❤🐀😨🥁🦇🏣㊗💰🚒🌟🐾🦅🐃🐷🤲🎩📳🇼🍎👛◻💻➗🔪🎂🌪🔔🍊✊🐚🍽🍫❗🚴🎒♏🧢🍁🌓😸🍦󠁢😶🗓🐡🛠✏😉🎯🍋🎟🔳🌨🎱💟⛏🤳📆🔅🍴📲🥊🖍🌡📬🆑🐇🗺😾🕰📵🏈🇮🍥➰🤠👥🕥😃😤😔🐹🎬⌛💎☃📖🔨👫🙄🥒⚜🏫🥃🍘🥥📍🦕💜🗝🙃🕤🐯👤🧔🏭🚭🚘💒🐓👁🤾🏐🏮🚋🌾📗🥈📚🤧🏃〰👱🔧🥖🇾☘🔘🔙⚗🛡🏖💹🉑🚛💩🛏♋🔸💴⏬✋👷😞☎🦂🎽🐞️🌘🌄⛵🈺🏸🎍📝🐪🍑😙🤓⚓󠁴💠🌔😵🥦📇🐌♓😘😢🐙🕦🏆🚨❇🙎🔶🛂🍲🥟📉🐕🍳🚈🔞😳🔌😊🌅🔊⛓🚻🚁✨💢🌊⚛😆😿🎈🏗🇭❓🙀🐨🚡🤢🔃▫🇶👿🤤📋🖋👕🐔😮🔵👂🌏⏏👦🐧🕎◾🍺🌧🖐📟🧙👶🌤↖🏬🤜⌚🏋🛐™🍜🤯🧣↘🔣🐣🥘🎫🎌😓🗨🚐🧚💲🍡😪🙏🖖⛽🏑⛲🎢🥗🚌🦁🚆☺🕒🎛⛹💏🐼🍶🚑🕞🤮🕕⏫🤰‼🎥🏀😰🌎📻󠁥🍂🇻🎴👸💼➖💆🕹👧🛩🍚❣🍓🤥🐄🍒♎🔽👵🔓🍠💍🏉▶🎠🎊👡📎💖🔺😺🍱📀⛎😽😷☣🦃🌯⛷🖼🚄💬🤐🦎♣🚦🍹‍🌱🛃🦄🦒🐈🕸🏟✖🚍😥↪🤝🏇⬇🌦🔄🚖⏺⬛♂⏲💁🚧🔤🚼👞🏄😩☂🕜🌚🧒⏯🎮🏯🌭🍵🔭💐🐤🕠💗🚎🛋🍧🤔🏽👒🤷🇸👘☝👴🔷⚖✴🉐✂🥂🕊👹⛴👅🚞😂📪🐺🦀󠁣🌃✉♒🤩🥕🎖🚀🕢😟🕵🇪👃🎑🏪🤟💿🥫😚🏩🏔🍏👢🏙📈⚒💝👠🎲🚲🖲⁉🇨🌳🚯🧀🕌🛶⛪🍌🧓🙈🇿⤴😬☪⚽🌈📔㊙💇🇯🗿🙁🍅☯🍞😠👍🕴▪👊💋🖱🎗🙌😎🐦🥡🔦💉🌺🔰🛣🕘🎶👳🍮🌜🐰↙🚔🕖🎿↕🐑🔛⛺🖕🧜🔟🖨🏕🎻🥝🎾🥐🤙🈳⚾🗑👣🚗🥧🏤🚕😒🤬🛷🤱🚏🚅🐂🐋🐜🤘⏪🦗⚱🔻👌〽👼💀👝☦⛱⏹󠁷📼📄🕺🎓😍🚩󠁧🔹🧡🥨➕🦌🤹ℹ🎉♉💨🏴🗼🏥🤪👮󠁳🏊🧟👖🙉☢🙇🔒👬📱🍈🏘🍐🕐😫🛄🧠🛥👭🎇🍭🤡🦑♍🐟🚃💧😋🚸🕍🚾✍🗽😹🎹🛒🧥🔎👓🚚🦖📷🤛👗🔜🥔🍖😄🔠💘🐴🤕󠁬🎄🧖🍗😈😧🈷🐽🌂♑💯🛑📁🧑🛰🎨☕🐒☑⛈🤨👐⛑🇳🔢🎞💪🍀⏸🌍💙🍃👺🍍🈸😜🈂⏮↩🌩🌵✈🏁😻👚🎙👋🔈☮🍬⛅🍸🐍🤫🎅🚿🏎🏳😁🚵💞🐢🐩💃😛🎪😴🕋🍆📯🥀💅🚳🙂🤶🌑⭕☁🥋👇🌌🍝😡⏱🔆🗯💶🥠🆓🌲👀🚢🕚💔🍇🦍⚕🇱🇰🦓🎧🥉🏺◼🌰🧦🔍💊🐠🌼🛎✅☸⚡💌👉🤵💕🚣📰👑🌽🚓😑📏👔♥◀🤽🐝🕛😌🧗🈵🗒🔐🈴🌕🌛🦐🎣🥞💣↔👾🅰😐🕟🥙👰🐏🚷🐆🥇👻🐲🌸🧘♨🎼🌗🌠✡🎤🅿🚬⛰🤞🍙🏓🔝💳🦋🕉🥚🔖🍪🛫🗜🔬🏡🤭🏚🔥❔💄🌥🕔✌🌫󠁮🐁👟🐛♈😭🌋🇦🔑🌞🐊🏷📒🎦🌴🍟🚉🍉💓🐮💷🔱💽🚇🐫🚥🐘🌐🥑🔲🛤🙍🐬📧⬅🐥⛔󠁿🏹👨🌝🇽🐖📿🔼😖😼📘🙋🥛🚺⏩🍾🗞🌹📠🗾🔗🏵🎃😝🖤🏒🛸🍯🦈🚜🔁🎭🌁💤😦💦👯®🏞👽👩💺💱📢🤖📸©👪🦆👙🦔📴🧐⏭🇴👄💚🎚📹🛢🐐🇷🍄🌖😀🌬🧤🐿❄🕝🍩🛵🔏🖊✒🍔🖌🖇🔇📐🧕📕📊📙📂🗂📓📅🗣🗳🗄📜📨🏅📑📤📦📫🔯📭📮🎐📩🈁🗡📃📥🎁🎏🛴🎀🎎😗🚪🚽🚰🕓♀🆕🐸💈🕳🐭🔋⚰😱🔩⚙🔫💡🕯🚟💸🕗💵⏰⏳📺📽📞🛳💾🕧🙊⌨🖥🕡🕣🕙🀄☀🕑🏢🛁💭♦🇲🃏🔉📣🎳🏜⬜⚪⚫🔴➿🔚✔🤦🏍🔂🎵⤵🔀➡⬆↗6🎺🆙🆒🔮🆖🆗🏧🛅🇺♿🦉✳❎⛩Ⓜ🌀♻🥅🈯🚱🚫🏠🅱🕶🌆🎸🚂🅾🆘☄❌🈹🈲🈶🈚☹🆚💮⭐🆔🐗♌♐🤴☔♊😯✝🇵📶🇹🇧🇩🇬🇫🎆🌇🌉🏛🏦🏨🏝◽😲🗻⛄🏰🚤🚊🛬🚝🚠🎷🆎🤸🤺🏂🤼🏏🥣🥢🍷🥄🍼🌻🥤🍻🍿🍰🌮🍣🍤🥪🍨🥓🥩🌒💫🌷🐉🐎🦏🐳🐅🕷😏🐵🐶🐱⚔🦊??👜 │ 🙅🙆🧛📌🗃👆👎🤒😣]",'')	

return Name
end
