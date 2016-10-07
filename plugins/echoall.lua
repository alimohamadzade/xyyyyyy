local function run(msg)
if not is_sudo(msg) then
return false
end
  local text = msg.text
  local b = 1

  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end
  return text
end

return {
  description = "Echo every message",
  usage = "Just active it",
  patterns = {
    "^(.+)$"
  }, 
  run = run 
}
