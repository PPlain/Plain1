local key = "e"
local keycode = string.byte(key:upper())

function love.keypressed(key)
  if key == keycode then
    print("Player Pressed " .. string.char(keycode))
  end
end


-- Place this in "StarterCharacterScripts" or "StarterPlayerScripts". I have not tested this so it may not work.
