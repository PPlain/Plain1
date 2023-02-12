local PointsStore = game:GetService("DataStoreService"):GetDataStore("Points") -- Creates Datastore

game.Players.PlayerAdded:Connect(function(Player)

	local leaderstats = Instance.new("Folder", Player)
	leaderstats.Name = "leaderstats"
	
	local Rank = Instance.new("StringValue", leaderstats)
	Rank.Name = "Rank"
	Rank.Value = Player:GetRoleInGroup(8428801) -- Gets the rank of the user is the group, replace "8428801" with your group ID on https://roblox.com/
	
	local Points = Instance.new("IntValue", leaderstats)
	Points.Name = "Points"
	Points.Value = PointsStore:GetAsync("user_"..Player.userId) or 0
	
end)

game.Players.PlayerRemoving:Connect(function(Player)
	PointsStore:SetAsync("user_"..Player.UserId, Player.leaderstats.Points.Value)
end)
