local function run(msg, matches)
    if matches[1] == "delplugin" and is_sudo(msg) then
text = io.popen("cd plugins && rm "..matches[2]..".lua")
return text.."?????? ["..matches[2].."] ?? ?????? ??? ??  @RedTeam_02_04"
end 
end

return { 
patterns = {
 
'^[!/](delplugin) (.*)$' 
},
run = run,
}
