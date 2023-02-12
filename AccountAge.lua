local minimumAge = 3 -- The amount of days the account has to of been created.
local kickMessage = "Your account must be at least "..minimumAge.." days old to play this game."

game.Players.PlayerAdded:Connect(function(player)
    if player.AccountAge < minimumAge then
        player:Kick(kickMessage)
    end
end)
