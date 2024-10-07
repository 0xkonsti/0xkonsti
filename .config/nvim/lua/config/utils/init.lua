local M = {}

M.get_user = function()
  local user = ""
  if os.getenv("OS") ~= nil and os.getenv("OS"):match("^Windows") then
    user = os.getenv("USERNAME")
  else
    user = os.getenv("USER")
  end
  local s = string.upper(string.sub(user, 1, 1))
    .. string.lower(string.sub(user, 2))
  return s
end

M.alpha_headers = require("config.utils.alpha-headers")

return M
